#include <stdio.h>

double ack(double m,double n)
{
    if(m == 0)  
        return n+1;  
    else if(n == 0)  
        return ack(m-1,1);  
    else  
        return ack(m-1,ack(m,n-1));
}
int main()
{
    int m,n;
    double result;
    double lala;

    m = 3;
    n = 3;
    result=ack(m,n);
    return 0;
}