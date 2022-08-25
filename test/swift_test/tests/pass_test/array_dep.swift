var arr = [1, 2, 3]; 

arr[0] = 0; 
var testvalue = arr[0]; 

arr[1] = 2;


func accessLocally() {
 var loc = arr[2]; 
 var locArr = [1, 2, 3]; 
 arr[1] = 0;
 locArr[0] = 1;  
 loc = locArr[1]
 locArr[1] = 0; 
 locArr[2] = 0; 

} 


accessLocally(); 



