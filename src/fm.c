#include <stdio.h>
#include <string.h>
#include "sa.h"
#include "helper.h"
#include "parsers/simple-fasta-parser.h"
#include <malloc.h>

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
    char* processFileName = get_file_name_by_fa(argv[2]);

    if (strcmp("-p", argv[1]) == 0)
    {
        // preprocessing
        //printf("Preprocessing genome %s\n", argv[2]);
        FILE* processFile = get_file(processFileName);
        char* fasta_str = read_file(argv[2]);
        char* fasta_str_start = fasta_str;
        struct FastaContainer* fastaContainer = parse_fasta(fasta_str);
        int** SAs = constructMultipleSARadix(fastaContainer);
        for(int i=0; i<fastaContainer->numberOfFastas; i++) {
            struct Fasta* fasta = fastaContainer->fastas[i];
            fprintf(processFile, "%d\n", fasta->fasta_len);
            fprintf(processFile, "%d\n", fasta->alphabet.size);
            for(int j=0; j<fasta->fasta_len; j++) {
                //TODO We can change this to compress, but not nesasary
                fprintf(processFile, "%d,", SAs[i][j] ? fasta->fasta_sequence[SAs[i][j]-1] : 0);
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
        // mapping
        printf("Mapping in genome %s for reads in %s\n",
               argv[1], argv[2]);
    }
    return 0;
}