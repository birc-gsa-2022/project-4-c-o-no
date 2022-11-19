#include <stdio.h>
#include <string.h>
#include <malloc.h>
#include <stdlib.h>
#include "sa.h"
#include "helper.h"
#include "rotater.h"
#include "parsers/simple-fasta-parser.h"
#include "parsers/simple-fastq-parser.h"

/*
 *
 * Dear traveller.
 * Take this to debug:
 *      int* a;
        a= malloc(sizeof(int));
        return 0;
 *
 */


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
        processFastas(processFile, fastaContainer, SAs);
        fclose(processFile);
        free_fasta_container(fastaContainer);
        free(SAs);
        free(fasta_str_start);
    }
    else
    {
        char* processFileName = get_file_name_by_fa(argv[1]);
        char* processString = read_file(processFileName);
        char* readString = read_file(argv[2]);
        readFromProcessed(processString, readString);
    }
    return 0;
}