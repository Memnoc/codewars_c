# Compiler settings
CC = gcc
CFLAGS = -Wall -Werror -I./src
TEST_FLAGS = -lcriterion

# Directory paths
SRC_DIR = src/challenges
TEST_DIR = tests

# Output binaries
TEST_BIN = $(TEST_DIR)/test
MAIN_BIN = main

# Source files
TEST_SRC = $(TEST_DIR)/test.test.c
IMPL_SRC = $(SRC_DIR)/add.c
MAIN_SRC = $(SRC_DIR)/test.c

# Targets
all: $(MAIN_BIN)

$(MAIN_BIN): $(MAIN_SRC)
	$(CC) $(CFLAGS) -o $@ $^

test: $(TEST_BIN)

$(TEST_BIN): $(TEST_SRC) $(IMPL_SRC)
	$(CC) $(CFLAGS) -o $@ $^ $(TEST_FLAGS)

run-test: test
	./$(TEST_BIN)

clean:
	rm -f $(MAIN_BIN) $(TEST_BIN)

.PHONY: all test run-test clean
