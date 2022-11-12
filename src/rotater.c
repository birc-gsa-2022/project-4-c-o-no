#include <malloc.h>
#include "rotater.h"

int oLookUp(int** o, char searchChar, int i) {
    if(!searchChar || !i) return 0;
    return o[searchChar-1][i-1];
}

int jump(int bwtIndex, char jumpChar, int* c, int** o) {
    return c[jumpChar] + oLookUp(o, jumpChar, bwtIndex);
}

struct Range* rotateString(char* string, int stringLen, int* c, int** o, char* bwt, int btwLen) {
    struct Range* r = malloc(sizeof(*r));
    r->start = 0;
    r->end = btwLen;
    for(int i=0; i<stringLen; i++) {
        if(r->start==r->end) return r;
        //TODO jump
    }

    return r;
}
