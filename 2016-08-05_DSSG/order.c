#include <stdio.h>

int main(){
    int a = 1;
    int b = 1;
    printf("%d\n", (a++ * 1) + (a++ * 2));
    printf("%d\n", (++b * 1) + (++b * 2));
    return 0;
}
