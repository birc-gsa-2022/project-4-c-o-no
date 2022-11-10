#include <stdio.h>
#include <string.h>
#include "sa.h"

int main(int argc, char const *argv[])
{
    if (argc != 3)
    {
        fprintf(stderr,
                "Usage: %s -p genome\n       %s genome reads\n",
                argv[0], argv[0]);
        return 1;
    }
    if (strcmp("-p", argv[1]) == 0)
    {

        struct FastaContainer fastaContainer = parse_fasta();
        int **SAs = constructMultipleSARadix(fastaContainer);

        // preprocessing
        printf("Preprocessing genome %s\n", argv[2]);
    }
    else
    {
        // mapping
        printf("Mapping in genome %s for reads in %s\n",
               argv[1], argv[2]);
    }
    return 0;
}