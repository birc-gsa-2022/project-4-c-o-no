#ifndef ROTATER_H
#define ROTATER_H

struct Range {
    int start;
    int end;
};

int oLookUp(int** o, int searchChar, int i);
int jump(int bwtIndex, int jumpChar, int* c, int** o);
struct Range* rotateString(const int* string, int stringLen, int* c, int** o, int btwLen);

#endif