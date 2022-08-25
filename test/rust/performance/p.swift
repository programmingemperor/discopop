var iterations = 100; 
var aG = 0, bG = 0; 
var cG = 0; 
var localRes = 0; 
var arrSum = 0, arrMul = 0; 

//same thing
var N = 25; 


func getArr(iterations: Int) -> Array<Int> {
    var arr = [Int](); 
    for i in 0...iterations {
        arr.append(i); 
    }
    return arr; 
}

var globalArr = getArr(iterations: iterations); 




func expensiveOP(n: Int) -> Int {
    // causes no iter loop dependencies showing up on PET
    // calculate nth fibonacci number 
    // for high n this will be much more xpensive thus potentially making better use of dynamic 
    // sheduling
    var fn = 0; 

    if ((n == 0) || (n == 1)){
        fn = n; 
    } else {
        fn = expensiveOP(n: n-1) + expensiveOP(n: n-2); 
    }

    return fn; 
}








func reduction() {

    var a = 0, b = 0, c = 0; 
    var localArr = getArr(iterations: iterations); 


    for i in 0...iterations {
        a = a + 1; 
        b = b * 5; 
        c = c - 2; 
    }

 



    for i in 0...iterations {
      
        bG = bG * 5; 
        c = c - i; 
        localRes = localArr[i] * 3 + localRes; 

        let tmp = a;
        a = tmp + i;

    }






    var arrSum = 0, arrMul = 0; 

    for i in 0...iterations {
        arrSum = arrSum + localArr[i]; 
        arrMul = arrMul + globalArr[i]; 
        
    }





    cG = 0; 
    a = 0; 
    
     
    for i in 0...20-1 {
        a = a + expensiveOP(n: 3); 
        cG = cG * expensiveOP(n: 3); 

    }
   
}






func do_all() {

    var localArr = getArr(iterations: iterations); 
  

    for i in 0...globalArr.count-1 {
       globalArr[i] = 0; 
    }
 

    for i in 0...localArr.count-1 {
       let tmp = localArr[i]; 
       localArr[i] = globalArr[i]; 
       globalArr[i] = tmp; 

    }    

}





reduction(); 
do_all(); 


