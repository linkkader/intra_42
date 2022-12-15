/* Copyright 2016 Google Inc. All Rights Reserved.

   Distributed under MIT license.
   See file LICENSE for detail or copy at https://opensource.org/licenses/MIT
*/

/* Simple runner for decode_fuzzer.cc */

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdint.h>

void LLVMFuzzerTestOneInput(const uint8_t* data, size_t size);

