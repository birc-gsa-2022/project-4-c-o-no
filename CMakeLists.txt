cmake_minimum_required (VERSION 3.21)
project (PROJECT)
enable_testing()

add_executable(fm src/fm.c src/helper.c src/sa.c  src/parsers/simple-fasta-parser.c src/parsers/simple-fastq-parser.c src/rotater.c)

add_executable(testing1 test/tests.c src/helper.c src/sa.c src/parsers/simple-fasta-parser.c src/parsers/simple-fastq-parser.c src/rotater.c)
add_executable(testing2 test/testSearch.c src/helper.c src/sa.c src/parsers/simple-fasta-parser.c src/parsers/simple-fastq-parser.c src/rotater.c)
add_executable(testRotate test/testRotation.c src/helper.c src/rotater.c src/parsers/simple-fasta-parser.c src/parsers/simple-fastq-parser.c)
#add_executable(testing3 test/sa_stdin.c )
add_executable(time test/time.c src/sa.c src/parsers/simple-fasta-parser.c src/parsers/simple-fastq-parser.c src/rotater.c src/helper.c)
add_test(tester testing1 "./")
add_test(tester2 testing2 "./")
add_test(testRotate testRotate "./")
