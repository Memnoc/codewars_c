#include <stdio.h>

int add(int a, int b) { return a + b; }

int num_one = 3;
int num_two = 4;

int main() {
  int result = add(num_one, num_two);
  printf("Result of add is: %d\n", result);
  return 0;
}
