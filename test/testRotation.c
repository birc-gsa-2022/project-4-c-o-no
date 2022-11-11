#include "minunit.h"
#include "../src/helper.h"
#include "testHelper.h"
#include "../src/rotater.h"

int** oMis;
int cMis[5] = {0, 1, 5,6,8};
char* bwtMis = "134420314411";

void test_setup(void) {
    oMis = malloc(4*sizeof(** oMis));
    int i[12] = {1,1,1,1,1,1,1,2,2,2,3,4};
    int m[12] = {0,0,0,0,1,1,1,1,1,1,1,1};
    int p[12] = {0,1,1,1,1,1,2,2,2,2,2,2};
    int s[12] = {0,0,1,2,2,2,2,2,3,4,4,4};
    oMis[0] = i;
    oMis[1] = m;
    oMis[2] = p;
    oMis[3] = s;
}

void test_teardown(void) {
    //Nothing
}


MU_TEST(lookup) {
    int alphabetSize = 3;
    int a[6] = {1,2,2,2,2,3};
    int b[6] = {0,0,1,1,1,1};
    int c[6] = {0,0,0,1,2,2};
    int** o = malloc(alphabetSize*sizeof(** o));
    o[0] = a;
    o[1] = b;
    o[2] = c;

    mu_assert_int_eq(1, oLookUp(o, 3, 4)); //c4

    mu_assert_int_eq(1, oLookUp(oMis, 3, 6));
    mu_assert_int_eq(2, oLookUp(oMis, 3, 7));
    mu_assert_int_eq(0, oLookUp(oMis, 2, 4));
    mu_assert_int_eq(1, oLookUp(oMis, 2, 5));
    mu_assert_int_eq(0, oLookUp(oMis, 0, 12));
    mu_assert_int_eq(0, oLookUp(oMis, 4, 0));
}

MU_TEST(test_jump) {
    int jumpPoint = jump(0, 1, cMis, oMis);
    mu_assert_int_eq(1, jumpPoint);
}

MU_TEST(test_rotateString) {
    char* ssi = "441";
    struct Range* rotation = rotateString(ssi, 3, cMis, oMis, bwtMis);
    mu_assert_int_eq(10, rotation->start);
    mu_assert_int_eq(12, rotation->end);

    char* sis = "414";
    rotation = rotateString(sis, 3, cMis, oMis, bwtMis);
    mu_assert_int_eq(3, rotation->start);
    mu_assert_int_eq(3, rotation->end);
}

void run_all_fasta_parser_tests() {
    MU_RUN_TEST(test_jump);
    MU_RUN_TEST(lookup);
    MU_RUN_TEST(test_rotateString);
}

MU_TEST_SUITE(fasta_parser_test_suite) {
    MU_SUITE_CONFIGURE(&test_setup, &test_teardown);
    run_all_fasta_parser_tests();
}

int main(int argc, char *argv[]) {
    init(argv[1]);
    MU_RUN_SUITE(fasta_parser_test_suite);
    MU_REPORT();
    return MU_EXIT_CODE;
}