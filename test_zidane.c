/*
 * Copyright (c) 2022 Leonardo Duarte
 *
 * SPDX-License-Identifier: BSD-2-Clause
 */

#include <stdlib.h>

#define ZIDANE_INIT
#define ZIDANE_DEINIT
#define ZIDANE_IMPLEMENTATION
#include "zidane.h"

ZIDANE_TEST(sanity)
{
	ZIDANE_VERIFY(2 + 2 == 4);
}

static int *x;

void zidane_init()
{
	x = malloc(sizeof(*x));
	*x = 42;
}

void zidane_deinit()
{
	free(x);
}

ZIDANE_TEST(init_and_deinit)
{
	ZIDANE_VERIFY(x);
	ZIDANE_VERIFY(*x == 42);
}

ZIDANE_TEST(should_fail1)
{
	ZIDANE_VERIFY(2 + 2 == 3);
}

ZIDANE_TEST(should_fail2)
{
	ZIDANE_VERIFY(2 + 2 == 5);
}
