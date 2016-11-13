#include <stdio.h>
#include <string.h>
int a[5][5];
int b[5][5];
int c[5][5];
int main()
{
	int num,i,j,k;
	double lala;
	num = 5;
	for(i = 0; i < num; ++i)
		for(j = 0; j < num; ++j)
			for(k = 0; k < num; ++k)
				c[i][j] += a[i][k]*b[k][j];
	return 0;
}
