#include <stdio.h>



int recursive_count_array(int* p_arr, int cur_idx){
    if (cur_idx >= 1){
        return *(p_arr + 0);
    }
    recursive_count_array(p_arr, cur_idx - 1);  // <-- Seg fault
    return *(p_arr + cur_idx);
}

// p_arr -> w:7
void write_to_arr(int* p_arr, int i_0, int* p_read_value){
    *(p_arr + i_0) = *p_read_value + i_0;
    //recursive_count_array(p_arr, i_0);
}

void call_write_to_arr(int* p_arr, int i_0, int* p_read_value){
    write_to_arr(p_arr, i_0, p_read_value);
}   

int useless_recursion(int t){
    if(t > 0){
        useless_recursion(t-1);
    }
    return 0;
}


int main(){
    int arr[10];
    int x = 0;
    int y = 0;
    useless_recursion(3);
    recursive_count_array(arr, 2);
    for(int a=0; a < 10; a++){
        int i_0=a;
        arr[i_0] = a + i_0;
        useless_recursion(4);
        call_write_to_arr(arr, i_0, &a);
        int z = 0;
        if(x > 3){
            arr[i_0] = arr[i_0] + 3;
        }
    }

    if(x > 3){
        y = y + x;
    }
    else{
        y = y - x;  
    }

}
