#include <stdio.h>
#include <ctype.h>

// accepts keyboard input and returns all printable characters to stdout 
// returns 0 when a newline is encountered
// returns 1 when an EOF (Ctrl-d, typically) is encountered
int main(int argc, char** argv)
{
    int c;
    while (1)
    {
        c = getchar();
        if (c == (int)'\n')
        {
            putchar(c);
            return 0;
        }
        else if (c == EOF)
        {
            return 1;
        }
        else if (isprint((int)c))
            putchar(c);
    }
}
