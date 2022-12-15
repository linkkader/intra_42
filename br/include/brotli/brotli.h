//
// Created by Abdoul Kader on 11/12/2022.
//

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
