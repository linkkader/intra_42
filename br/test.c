//
// Created by Abdoul Kader on 15/12/2022.
//

#include  <stdlib.h>
#include  <stdio.h>

#ifndef DART_BROTLI_BROTLI_H
#define DART_BROTLI_BROTLI_H

typedef unsigned char uint8_t;

typedef struct TVALUE {
	uint8_t* data;
	int length;
} TVALUE;

TVALUE *myCompress(char *str, char *path);
TVALUE *myDeCompress(uint8_t *data, unsigned long long length, char *path);
#endif //DART_BROTLI_BROTLI_H


TVALUE *myCompress(char *str, char *path)
{
	printf("Compressing %s", path);
	TVALUE *tvalue = (TVALUE *)malloc(sizeof(TVALUE));
	tvalue->data = (uint8_t *)malloc(sizeof(uint8_t) * 100);
	tvalue->length = 100;
	return tvalue;
}

TVALUE *myDeCompress(uint8_t *data, unsigned long long length, char *path)
{
	TVALUE *tvalue = (TVALUE *)malloc(sizeof(TVALUE));
	tvalue->data = (uint8_t *)malloc(sizeof(uint8_t) * 100);
	tvalue->length = 100;
	return tvalue;
}
