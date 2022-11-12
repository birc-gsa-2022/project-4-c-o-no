#include <malloc.h>
#include "rotater.h"

int oLookUp(int** o, int searchChar, int i) {
    if(!searchChar || !i) return 0;
    return o[searchChar-1][i-1];
}

int jump(int bwtIndex, int jumpChar, int* c, int** o) {
    return c[jumpChar] + oLookUp(o, jumpChar, bwtIndex);
}

struct Range* rotateString(const int* string, int stringLen, int* c, int** o, int btwLen) {
    struct Range* r = malloc(sizeof(*r));
    int jumpChar;
    r->start = 0;
    r->end = btwLen;
    for(int i=stringLen-1; i>=0; i--) {
        if(r->start>=r->end) return r;
        jumpChar = string[i];
        r->start = jump(r->start, jumpChar, c, o);
        r->end = jump(r->end, jumpChar, c, o);
    }
    return r;
}
