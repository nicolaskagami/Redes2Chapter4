#include <time.h>
#include <stdio.h>

int main()
{
clock_t start = clock(), diff;
diff = clock() - start;

int msec = diff * 1000 / CLOCKS_PER_SEC;
double t = diff * 1000000 / CLOCKS_PER_SEC;
printf("%f\n",t);
//printf("Time taken %d seconds %d milliseconds", msec/1000, msec%1000);
}
