#include <stdio.h>

#define CHUNK 1024 /* read 1024 bytes at a time */

int main() {
	char buf[CHUNK];
	size_t nread;

	FILE* file = fopen("./docs/README.md", "r");
	if (file) {
		while ((nread = fread(buf, 1, sizeof buf, file)) > 0)
			fwrite(buf, 1, nread, stdout);
		if (ferror(file)) {
			printf( "Something went wrong while reading README.md" );
			return 1;
		}
    		fclose(file);
	}

	return 0;
}
