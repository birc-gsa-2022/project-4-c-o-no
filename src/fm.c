#include <stdio.h>
#include <string.h>
#include <malloc.h>
#include <stdlib.h>
#include "sa.h"
#include "helper.h"
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
        //preprocessing
        char* fastaStr = read_file(argv[2]);
        char* processFileName = get_file_name_by_fa(argv[2]);
        FILE* processFile = get_file(processFileName);
        free(processFileName);
        struct FastaContainer* fastaContainer = parse_fasta(fastaStr);
        int** SAs = constructMultipleSARadix(fastaContainer);
        processFastas(processFile, fastaContainer, SAs);
        fclose(processFile);
        for(int i=0; i<fastaContainer->numberOfFastas; i++) {
            free(SAs[i]);
        }
        free(SAs);
        free_fasta_container(fastaContainer);
        free(fastaStr);
    }
    else
    {
        char* processFileName = get_file_name_by_fa(argv[1]);
        char* processString = read_file(processFileName);
        free(processFileName);
        char* readString = read_file(argv[2]);
        readFromProcessed(processString, readString);
        free(processString);
        free(readString);
    }
    return 0;
}