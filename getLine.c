#include <stdio.h>
#include <ctype.h>

int main(int argc, char** argv)
{
    int c;
    while (1)
    {
        c = getchar();
        if (c == (int)'\n')
        {
            return 0;
            putchar(c);
        }
        else if (c == EOF)
        {
            return 1;
        }
        else if (isprint((int)c))
            putchar(c);
    }
}
