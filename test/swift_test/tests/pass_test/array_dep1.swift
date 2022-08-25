var arr = [1, 2, 3, 4]; 
var i = 0; 
var reduction = 0; 

arr[i] = 0; 
arr[1] = 1; 

//should recornized second write here
reduction = arr[i]; 

// read should be recognized here
arr[i] = arr[i] + 1; 
i = i + 1; 

arr[i] = arr[i] + 1; 
