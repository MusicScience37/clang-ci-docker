#include <iostream>

void show_version(bool output) {
    if (!output) {
        // this won't be executed, but written for test of coverage
        return;
    }
    std::cout << "Version of clang++: " << __clang_major__ << "."
              << __clang_minor__ << "." << __clang_patchlevel__ << std::endl;
}

int main() {
    show_version(true);
    return 0;
}
