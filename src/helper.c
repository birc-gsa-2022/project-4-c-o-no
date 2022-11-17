#include "helper.h"
#include <stdio.h>
#include <malloc.h>
#include <string.h>
#include "parsers/simple-fastq-parser.h"

void printIntArray(int * a, int len) {
    printf("[");
    for(int i=0; i<len; i++) {
        printf("%d,", a[i]);
    }
    printf("]\n");
}

void printString(char * a, int len) {
    for(int i=0; i<len; i++) {
        printf("%c", a[i]);
    }
    printf("\n");
}

char *read_file(const char *file_name) {
    FILE *fp;
    fp = fopen(file_name, "rb");

    fseek(fp, 0, SEEK_END);
    long fsize = ftell(fp);
    fseek(fp, 0, SEEK_SET);  /* same as rewind(f); */

    char *string = malloc(fsize + 1);
    fread(string, fsize, 1, fp);
    fclose(fp);

    string[fsize] = '\0'; // terminate with zero
    return string;
}

FILE* get_file(const char* file_name) {
    FILE *fpt;
    fpt = fopen(file_name, "w+");
    return fpt;
}

char* get_file_name_by_fa(const char* faName) {
    size_t nameLen = strlen(faName)-2;
    char* processingFileName = malloc((nameLen+4)*sizeof(* processingFileName));
    strcpy(processingFileName, faName);
    processingFileName[nameLen] = 't';
    processingFileName[nameLen+1] = 'x';
    processingFileName[nameLen+2] = 't';
    processingFileName[nameLen+3] = '\0';
    return processingFileName;
}

FILE* get_file_by_fa(const char* faName) {
    return get_file(get_file_name_by_fa(faName));
}

void write_to_file(FILE* fpt, char* content, int len) {
    for(int i=0; i<len; i++) {
        fprintf(fpt, "%c", *(content++));
    }
}

struct ReadContainer* makeReadContainer(char* readString) {
    struct ReadContainer* rc = malloc(sizeof *rc);

    int listSize = 10000; // Todo - small listSize breaks everything
    int* patLens = malloc(listSize*sizeof *patLens);
    char** heads = malloc(listSize*sizeof *heads);
    char** patterns = malloc(listSize*sizeof *patterns);

    int count = 0;
    while (*readString != '\0') {
        if(count>=listSize) {
            listSize <<= 1;
            patLens = realloc(patLens, listSize*sizeof *patLens);
            heads = realloc(heads, listSize*sizeof *patLens);
            patterns = realloc(patterns, listSize*sizeof *patLens);
        }
        heads[count] = read_fastq_head(&readString);
        patterns[count] = read_fastq_pattern(&readString);
        patLens[count] = (int) strlen(patterns[count]); // TODO in parsing
        count++;
    }

    rc->count=count;
    rc->patterns=patterns;
    rc->heads=heads;
    rc->patLens=patLens;
    return rc;
}
