#include <stdio.h>
#include <string.h>
#include <malloc.h>
#include "sa.h"
#include "helper.h"
#include "rotater.h"
#include "parsers/simple-fasta-parser.h"
#include "parsers/simple-fastq-parser.h"

int main(int argc, char const *argv[])
{
    if (argc != 3)
    {
        fprintf(stderr,
                "Usage: %s -p genome\n       %s genome reads\n",
                argv[0], argv[0]);
        fprintf(stderr,
                "argc=%d\n",
                argc);
        return 1;
    }


    if (strcmp("-p", argv[1]) == 0)
    {
        // preprocessing
        //printf("Preprocessing genome %s\n", argv[2]);
        char* processFileName = get_file_name_by_fa(argv[2]);
        FILE* processFile = get_file(processFileName);
        char* fasta_str = read_file(argv[2]);
        char* fasta_str_start = fasta_str;
        struct FastaContainer* fastaContainer = parse_fasta(fasta_str);
        int** SAs = constructMultipleSARadix(fastaContainer);
        for(int i=0; i<fastaContainer->numberOfFastas; i++) {
            struct Fasta* fasta = fastaContainer->fastas[i];
            fprintf(processFile, "%s\n", fasta->fasta_head); //Save head
            fprintf(processFile, "%d\n", fasta->fasta_len); //Save length
            fprintf(processFile, "%d\n", fasta->alphabet.size); //Save alphabetsize
            for(int j=0; j<fasta->fasta_len; j++) { //Save bwt
                //TODO We can change this to compress, but not nesasary
                fprintf(processFile, "%d,", SAs[i][j] ? fasta->fasta_sequence[SAs[i][j]-1] : 0);
            }
            fprintf(processFile, "\n");
            for(int j=0; j<fasta->fasta_len; j++) { //Save sa
                fprintf(processFile, "%d,", SAs[i][j]);
            }
            fprintf(processFile, "\n");

            for(int j=0; j<128; j++) {
                //TODO do in parser
                if(fasta->alphabet.symbols[j]) fprintf(processFile, "%c", j);
            }
            fprintf(processFile, "\n");

            free(SAs[i]);
        }
        free_fasta_container(fastaContainer);
        free(SAs);
        free(fasta_str_start);

    }
    else
    {
        char* processFileName = get_file_name_by_fa(argv[1]);
        char* processString = read_file(processFileName);
        char* readString = read_file(argv[2]);
        char* readStart = readString;
        char* fastaHead;
        char* readHead;
        char* pattern;
        int* patternConvert;
        int n;
        int alphabetSize;
        int* bwt;
        int* sa;
        int** O;
        int* C;
        int* alphabet;
        struct Range* saRange = malloc(sizeof *saRange);

        struct ReadContainer *read_container = makeReadContainer(readString);


        while(*processString != '\0') {
            fastaHead = processString;
            while (*(++processString) != '\n') {}
            if(*(processString-1) == '\r') {
                *(processString-1) = '\0';
            }

            processString++;
            n = atoi(processString); //atoi stops at first non-int
            while(*(processString++) != '\n') {}
            alphabetSize = atoi(processString);
            while(*(processString++) != '\n') {}

            //bwt
            //TODO could make each symbol distinguable without ,
            //TODO Don't make bwt, go directly to O and C
            bwt = malloc(n * sizeof *bwt);
            for(int i=0; i<n; i++) {
                bwt[i] = atoi(processString);
                while(*(processString++) != ',') {}
            }
            O = malloc(n*sizeof (*O));
            C = calloc(alphabetSize, sizeof *C);
            makeOandC(bwt, n, O, C, alphabetSize);

            while(*(processString++) != '\n') {}

            //sa
            sa = malloc(n * sizeof *sa);
            for(int i=0; i<n; i++) {
                sa[i] = atoi(processString);
                while(*(processString++) != ',') {}
            }

            while(*(processString++) != '\n') {}

            alphabet = calloc(128, sizeof *alphabet);
            for(int i=0; i<alphabetSize-1; i++) {
                alphabet[*(processString++)] = i+1;
            }



            for (int j = 0; j < read_container->count; j++) {
                readHead = read_container->heads[j];
                pattern = read_container->patterns[j];
                int pattern_len = read_container->patLens[j];

                patternConvert = malloc(pattern_len*sizeof *patternConvert);
                for(int i=0; i<pattern_len; i++) {
                    patternConvert[i] = alphabet[pattern[i]];
                }

                rotateString(patternConvert, pattern_len, C, O, n, saRange);
                free(patternConvert);

                int start = saRange->start;
                int end = saRange->end;
                for(int i=start; i<end; i++) {
                    printf("%s\t%s\t%d\t%dM\t%s\n", readHead, fastaHead, sa[i]+1, pattern_len, pattern);
                }
            }
            readString = readStart;

            while(*(processString++) != '\n') {}

            for(int i=0; i<n; i++) {
                free(O[i]);
            }
            free(O);
            free(C);
            free(sa);
        }


        // mapping
        //printf("Mapping in genome %s for reads in %s\n",
        //       argv[1], argv[2]);
    }
    return 0;
}