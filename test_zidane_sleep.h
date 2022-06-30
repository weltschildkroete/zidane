/*
 * Copyright (c) 2022 Leonardo Duarte
 *
 * SPDX-License-Identifier: BSD-2-Clause
 */

#include <unistd.h>

#include "zidane.h"

ZIDANE_TEST(takes_one_second)
{
	unsigned int rc = sleep(1);

	ZIDANE_VERIFY(rc == 0);
}

ZIDANE_TEST(takes_two_seconds)
{
	unsigned int rc = sleep(2);

	ZIDANE_VERIFY(rc == 0);
}
