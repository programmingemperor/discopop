import Foundation
import Dispatch 

var iterations = 10000; 
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

//TODO: finish dispatch reduction examples, find 3 more examples for each, run for time measurments and correctness


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



//implement array functions

func reduction() {
    // basic local arithmetic reduction with all possible one dimensional operations 
    var a = 0, b = 0, c = 0; 
    var localArr = getArr(iterations: iterations); 


    var start = DispatchTime.now() 

    for i in 0...iterations {
        a = a + 1; 
        b = b * 5; 
        c = c - 2; 
    }

    var end = DispatchTime.now() 


    var nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds
    var timeInterval = Double(nanoTime) / 1_000_000_000
    print("sequential reduction example 1: ", timeInterval)




    // basic global arithmetic reduction with local vars, all possible operations, reduction over index, on global var
    // mixed example + different load/store lines
    start = DispatchTime.now() 
    for i in 0...iterations {
      
        bG = bG * 5; 
        c = c - i; 
        localRes = localArr[i] * 3 + localRes; 

        let tmp = a;
        a = tmp + i;

    }

    end = DispatchTime.now()

    nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds
    timeInterval = Double(nanoTime) / 1_000_000_000
    print("sequential reduction example 2: ", timeInterval)






    // global and local array read reduction operations

    var arrSum = 0, arrMul = 0; 

    start = DispatchTime.now() 

    for i in 0...iterations {
        arrSum = arrSum + localArr[i]; 
        arrMul = arrMul + globalArr[i]; 
        
    }

    end = DispatchTime.now()

    nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds
    timeInterval = Double(nanoTime) / 1_000_000_000
    print("sequential reduction example 3: ", timeInterval)

    




    // reduction operation with function call


    cG = 0; 
    a = 0; 

    start = DispatchTime.now() 
    
     
    for i in 0...20-1 {
        a = a + expensiveOP(n: 30); 
        cG = cG * expensiveOP(n: 30); 

    }

    end = DispatchTime.now()

    nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds
    timeInterval = Double(nanoTime) / 1_000_000_000
    print("sequential reduction example 4: ", timeInterval)


    //nested for loop
   
}




func do_all() {

    var localArr = getArr(iterations: iterations); 
    //zero init array from before

    // example 1
    var start = DispatchTime.now() 

    for i in 0...globalArr.count-1 {
       globalArr[i] = 0; 
    }
    var end = DispatchTime.now()

    var nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds
    var timeInterval = Double(nanoTime) / 1_000_000_000
    print("sequential doall example 1: ", timeInterval)



    //example 2
    //element swap between two arrays of same length has no inter loop deps
    start = DispatchTime.now() 

    for i in 0...localArr.count-1 {
       let tmp = localArr[i]; 
       localArr[i] = globalArr[i]; 
       globalArr[i] = tmp; 

    }    

    end = DispatchTime.now()

    nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds
    timeInterval = Double(nanoTime) / 1_000_000_000
    print("sequential doall example 2: ", timeInterval)

    // nested for loop

    //something with actual computational value

}


func reduction_concurrent() {

    // make instance of queue
    // do instance.sync for blocking
    // do concurrentParallel in sync block
    // use this queue instance as queue for sync synchronization operation
     
    var stride = N; 
    // too much for this task
    var number_of_tasks = globalArr.count/stride;

    // residue


    var localArr = getArr(iterations: iterations);

    

    var a = 0, b = 0, c = 0; 

    var queue = DispatchQueue(label: "reductionQueue", attributes: .concurrent);
    let group = DispatchGroup() 


    // example 1
    var start = DispatchTime.now() 

    queue.sync{

    DispatchQueue
    .concurrentPerform(iterations: number_of_tasks){ (index) in

    
        // start index of current array is tasknumber* offset 
        // stride(length of each task)
        var stride = N; 
        var j = index * stride+1;
        var stride_end = j + stride;

        var privA = 0, privB = 0, privC = 0; 

        repeat {
        a = a + 1; 
        b = b * 5; 
        c = c - 2; 

        j = j + 1; 
        } while (j < stride_end);

        queue.sync{ 
        a = privA; 
        b = privB; 
        c = privC; 
    }
    }

    }

    

    var end = DispatchTime.now()
    var nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds
    var timeInterval = Double(nanoTime) / 1_000_000_000
    print("dispatch reduction example 1: ", timeInterval)





    // example 2
    start = DispatchTime.now() 

    queue.sync{


    DispatchQueue
    .concurrentPerform(iterations: number_of_tasks){ (index) in

        var stride = N; 
        var j = index * stride+1;
        var stride_end = j + stride;

        var privA = 0, privB = 1, privC = 0, localResPriv = 0; 

        repeat {
        privA = privA + j; 
        privB = privB * 5; 
        privC = privC - j; 
        localResPriv = localArr[j] * 3 + localResPriv;

        j = j + 1; 
        } while (j < stride_end);

        queue.sync{ 
        a = a + privA; 
        bG = bG * privB; 
        c = c - privC; 
        localRes = localRes + localResPriv; 
    }
    }

    }

    

    end = DispatchTime.now()
    nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds
    timeInterval = Double(nanoTime) / 1_000_000_000
    print("dispatch reduction example 2: ", timeInterval)




/*
    // example 3

    var arrSum = 0, arrMul = 1; 

    start = DispatchTime.now() 

    queue.sync{


    DispatchQueue
    .concurrentPerform(iterations: number_of_tasks){ (index) in

    
        // start index of current array is tasknumber* offset 
        // stride(length of each task)
        var stride = N; 
        var j = index * stride+1;
        var stride_end = j + stride;

        var privarrSum = 0, privarrMul = 1; 

        repeat {
        privarrSum = arrSum + localArr[j]; 
        //privarrMul = arrMul * globalArr[j]; 

        j = j + 1; 
        } while (j < stride_end);

        queue.sync{ 
        arrSum = arrSum + privarrSum; 
        //arrMul = arrMul * privarrMul
    
    }
    }

    }

    

    end = DispatchTime.now()
    nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds
    timeInterval = Double(nanoTime) / 1_000_000_000
    print("dispatch reduction example 3: ", timeInterval)


*/



    //example 4

    aG = 0; 
    cG = 0; 
    a = 0;   


    var iterations = 20; 
    stride = 4; 

    number_of_tasks = iterations/stride; 
  

    //group.enter(); 

    start = DispatchTime.now() 
    queue.sync{

    DispatchQueue
    .concurrentPerform(iterations: number_of_tasks) { (index) in
    
        // start index of current array is tasknumber* offset 
        // stride(length of each task)
        //var stride = N; 
        var j = index * stride+1;
        var stride_end = j + stride;

        var privA = 0;
        var privcG = 1; 
        

        repeat {
        privA = privA + expensiveOP(n: 30); 
        privcG = expensiveOP(n: 30); 

        j = j + 1; 
        } while (j < stride_end);


       
        queue.sync{
        
        a = a + privA; 
        cG = cG * privcG; 

        } 

    }   
    //group.leave(); 

    }

    //group.wait(); 


    end = DispatchTime.now()

    nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds
    timeInterval = Double(nanoTime) / 1_000_000_000
    print("dispatch reduction example 4: ", timeInterval)

}





//time measurements
//dispatch implementation


func doall_concurrent() {


    var localArr = getArr(iterations: iterations); 

    var stride = N; 
    var number_of_tasks = globalArr.count/stride; 
    // residue for uneven arrays
    
    var queue = DispatchQueue(label: "reductionQueue", attributes: .concurrent);
    let group = DispatchGroup()

    // example 1
    var start = DispatchTime.now() 

    // should block main thread 

    queue.sync{
    DispatchQueue
    .concurrentPerform(iterations: number_of_tasks) { (index) in

        // just stride
        var j = index * stride+1;
        var stride_end = j + stride;
      
        repeat {
        
        globalArr[j] = 0; 

        j = j + 1; 
        } while (j < stride_end);
    }

    }
    

    var end = DispatchTime.now()

    var nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds
    var timeInterval = Double(nanoTime) / 1_000_000_000
    print("dispatch doall example 1: ", timeInterval)
    





    // example 2
    start = DispatchTime.now() 

    queue.sync {

    DispatchQueue
    .concurrentPerform(iterations: number_of_tasks) { (index) in

        // just stride
        var j = index * stride+1;
        var stride_end = j + stride;
      
        repeat {
        
        var tmp = globalArr[j]; 
        localArr[j] = globalArr[j]; 
        globalArr[j] = tmp; 

        j = j + 1; 
        } while (j < stride_end);
        
    }

    }

    

    end = DispatchTime.now() 

    nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds
    timeInterval = Double(nanoTime) / 1_000_000_000
    print("dispatch example 2: ", timeInterval)


    print("examples done")

}


func entry() {

    print("SEQUENTIAL REDUCTION"); 
    reduction(); 
    print("\n");

    print("SEQUENTIAL DOALL"); 
    do_all(); 
    print("\n");

    print("CONCURRENT REDUCTION "); 
    reduction_concurrent(); 
    print("\n");

    print("CONCURRENT DOALL"); 
    doall_concurrent(); 
    print("\n");

}


entry(); 