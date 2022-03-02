# Zidane

Zidane is a simple header-only unit testing library for C.

## Usage

Simply include the `zidane.h` header file on the beginning of a C source file containing the test cases. Furthermore, define the `ZIDANE_IMPLEMENTATION` macro before the include in exactly one file, as follows:

```c
#define ZIDANE_IMPLEMENTATION
#include "zidane.h"
```

Test cases are C functions defined with the `ZIDANE_TEST(name)` macro, where `name` should be a unique identifier for the test case. The test functions have the following prototype:

```c
void test_example(void);
```

and can be defined as follows:

```c
ZIDANE_TEST(test_example)
{
	// ...
}
```

One can use the `ZIDANE_VERIFY(p)` macro to check for a particular condition, given by a boolean `p`. For example, one might write

```c
ZIDANE_TEST(sanity)
{
	ZIDANE_VERIFY(2 + 2 == 4);
}
```

Please refer to `test_zidane.c` for more example usage.

## References

- Other unit testing libraries:
  - [Check](https://github.com/libcheck/check)
  - [Acutest](https://github.com/mity/acutest)
- More about single header libraries: [Sean T. Barrett's Lessons learned about how to make a header-file library](https://github.com/nothings/stb/blob/master/docs/std_howto.txt)
