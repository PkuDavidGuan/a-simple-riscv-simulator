#include <stdio.h>

int main()
{
    int a[2][2] = {{1,2},{3,4}};
    int b[2][2] = {{1,2},{3,4}};
    int c[2][2];
    int i = 0;
    int j = 0;
    int k = 0;
    for(; i < 2; ++i)
    {
	for(j = 0; j < 2; ++j)
	{
	    for(k = 0; k < 2; ++k)
	    {
		c[i][j] += a[i][k]*b[k][j];
	    }
	}
    }
    return 0;
}
