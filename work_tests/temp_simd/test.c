#include <stdio.h>
#include <stdlib.h>

int calc(int a, int b){
    return a + b;
}

int main(){
    int result = 0;
    int result2 = 0;
    int result3 = 0;
    int i, j, k;
    for (i = 0; i < 10; i++){
        for (j = 0; j < 5; j++){
            result = calc(i,j);
        }
    }

    for (i = 0; i < 10; i++){
        for (j = 0; j < 5; j++){
            for (k = 0; k < 7; k++){
                result2 = i + j + k;
            }
        }
    }

    for (i = 0; i < 10; i++){
        for (j = 0; j < 5; j++){
            int temp = i + j;
            for (k = 0; k < 7; k++){
                result3 = temp + k;
            }
        }
    }

    int a[10];
    int b[10];
    int sum = 0;
    for (i=0;i<10;i++){
        a[i]=i;
        b[i]=i+1;
    }
    for (i=0;i<10;i++){
        for (j=0; j<10; j++){
            a[j]=a[j+1] + b[i];
        }
    }


    printf("result = %d\n", result);
    printf("result = %d\n", result2);
    printf("result = %d\n", result3);
}