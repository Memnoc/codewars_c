#include <criterion/criterion.h>

extern int add(int a, int b);

Test(math_suite, addition_test) {
    cr_assert_eq(add(3, 4), 7, "Addition should work correctly");
    cr_assert_eq(add(-1, 1), 0, "Addition with negative numbers should work");
    cr_assert_eq(add(0, 0), 0, "Addition with zeros should work");
}
