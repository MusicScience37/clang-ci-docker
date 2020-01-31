#include <stdio.h>

void show_version(int output) {
    if (output == 0) {
        // this won't be executed, but written for test of coverage
        return;
    }
    printf("Version of clang: %d.%d.%d", __clang_major__, __clang_minor__,
        __clang_patchlevel__);
}

int main() {
    show_version(1);
    return 0;
}
