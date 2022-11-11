#ifndef HELPER_H
#define HELPER_H
#include <stdio.h>

void printIntArray(int * a, int len);
void printString(char * a, int len);
char *read_file(const char *file_name);
void write_to_file(FILE* fpt, char* content, int len);
char* get_file_name_by_fa(const char* faName);
FILE* get_file(const char* file_name);

#endif //HELPER_H
