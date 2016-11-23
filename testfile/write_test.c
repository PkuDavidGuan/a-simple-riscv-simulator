#include <stdio.h>

int main()
{
    char x[] = "hello world!\n";
    write(1, x, 13);
    return 0;
}