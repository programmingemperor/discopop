#include <stdio.h>
#include <stdlib.h>

int calc(int a, int b){
    return a + b;
}

int main(){
    int result = 0;
    int i, j;
    for (i = 0; i < 10; i++){
        for (j = 0; j < 5; j++){
            result = i + j;
        }
    }
    printf("result = %d\n", result);
}