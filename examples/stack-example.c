#include <stdio.h>

int function(int a, const char *s)
{
    int c = 0;
    while (s[c] != 0) c++;
    
    return c - a;
}

const char string[] = "Hello world!";

int main()
{
    int x, y;
    y = 10;
    x = function(y, string);

    printf("x = %d\n", x);
    return 0;
}

