# Codewars challenges in C

## Criterion

Assuming your project structure is:
`src/challenges/filename.c`
`src/utils/utils.h`
`tests/test.filename.c`

**Example:**
`gcc -o tests/test tests/test.c src/challenges/add.c -lcriterion`

### Compile with Makefile

`make or make all` - Build the main program
`make test` - Build the test program
`make run-test` - Build and run the tests
`make clean` - Remove the compiled binaries

### Compile with CMake (recommended)

In the `build/` directory:

`make ..` - Build the files
`make` - Build the project
`make test` - Runs the tests
`make test_verbose` - Runs the tests with more detailed output
