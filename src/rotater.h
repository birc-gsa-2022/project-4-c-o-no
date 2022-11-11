#ifndef ROTATER_H
#define ROTATER_H

struct Range {
    int start;
    int end;
};

int oLookUp(int** o, char searchChar, int i);
int jump(int bwtIndex, char jumpChar, int* c, int** o);
struct Range* rotateString(char* string, int stringLen, int* c, int** o, char* bwt);

#endif