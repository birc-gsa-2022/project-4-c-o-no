#include <malloc.h>
#include "rotater.h"

int oLookUp(int** o, char searchChar, int i) {
    if(!searchChar || !i) return 0;
    return o[searchChar-1][i-1];
}

int jump(int bwtIndex, char jumpChar, int* c, int** o) {
    //TODO
    return 0;
}
struct Range* rotateString(char* string, int stringLen, int* c, int** o, char* bwt) {
    //TODO
    struct Range* r = malloc(sizeof(*r));
    return r;
}
