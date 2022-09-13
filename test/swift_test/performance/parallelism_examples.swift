import Foundation
import Dispatch 

var iterations = 10000; 
var aG = 0, bG = 0; 
var cG = 0; 
var localRes = 0; 
var arrSum = 0, arrMul = 0; 


var N = 1000; 


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
      
        bG = bG + 5; 
        c = c - i; 
        localRes = localArr[i] + 3 + localRes; 

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
    var number_of_tasks = iterations/stride;
    print("number of tasks", number_of_tasks)

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
        var j = index * stride;
        var stride_end = j + stride;
        print("task nr", index); 

        var privA = 0, privB = 0, privC = 0; 

        repeat {
        a = a + 1; 
        b = b * 5; 
        c = c - 2; 

        j = j + 1; 
        } while (j < stride_end);

        queue.sync{ 
        a = a + privA; 
        b = b + privB; 
        c = c + privC; 
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
        var j = index * stride;
        var stride_end = j + stride;

        var privA = 0, privB = 1, privC = 0, localResPriv = 0; 

        repeat {
        privA = privA + j; 
        privB = privB + 5; 
        privC = privC - j; 
        localResPriv = localArr[j] + 3 + localResPriv;

        j = j + 1; 
        } while (j < stride_end);
        

        queue.sync{ 
        a = a + privA; 
        bG = bG + privB; 
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
        var j = index * stride;
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
        var j = index * stride;
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
        cG = cG + privcG; 

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
    var number_of_tasks = iterations/stride; 
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
        var j = index * stride;
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
        var j = index * stride;
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


/*

stride 10000: 

SEQUENTIAL REDUCTION
sequential reduction example 1:  0.000208848
sequential reduction example 2:  0.001449642
sequential reduction example 3:  0.000372157
sequential reduction example 4:  1.081587362


SEQUENTIAL DOALL
sequential doall example 1:  0.000213156
sequential doall example 2:  0.000384366


CONCURRENT REDUCTION 
dispatch reduction example 1:  5.7751e-05 = 0.00005
dispatch reduction example 2:  6.6211e-05
dispatch reduction example 4:  0.274854242


CONCURRENT DOALL
dispatch doall example 1:  0.000294819
dispatch example 2:  0.000792413



stride 1000: 

SEQUENTIAL REDUCTION
sequential reduction example 1:  0.000120911
sequential reduction example 2:  0.000824055
sequential reduction example 3:  0.00031972
sequential reduction example 4:  1.068835035


SEQUENTIAL DOALL
sequential doall example 1:  0.000227915
sequential doall example 2:  0.000389918


CONCURRENT REDUCTION 
dispatch reduction example 1:  0.000627018
dispatch reduction example 2:  0.000297453
dispatch reduction example 4:  0.261780059


CONCURRENT DOALL
dispatch doall example 1:  0.000129481
dispatch example 2:  0.000263437



stride 25: 

SEQUENTIAL REDUCTION
sequential reduction example 1:  0.000249884
sequential reduction example 2:  0.001549177
sequential reduction example 3:  0.000233431
sequential reduction example 4:  1.157672886


SEQUENTIAL DOALL
sequential doall example 1:  0.000231674
sequential doall example 2:  0.000370542


CONCURRENT REDUCTION 
dispatch reduction example 1:  0.030082164
dispatch reduction example 2:  0.00098404
dispatch reduction example 4:  0.27025934


CONCURRENT DOALL
dispatch doall example 1:  0.000173879
dispatch example 2:  0.000205735
examples done


stride 5: 


SEQUENTIAL REDUCTION
sequential reduction example 1:  0.000143518
sequential reduction example 2:  0.000977895
sequential reduction example 3:  0.000375864
sequential reduction example 4:  1.106987608


SEQUENTIAL DOALL
sequential doall example 1:  0.000260302
sequential doall example 2:  0.000410097


CONCURRENT REDUCTION 
dispatch reduction example 1:  0.031031167
dispatch reduction example 2:  0.001739485
dispatch reduction example 4:  0.268966902


CONCURRENT DOALL
dispatch doall example 1:  0.000325007
dispatch example 2:  0.000321672


stride 1: 

SEQUENTIAL REDUCTION
sequential reduction example 1:  8.8426e-05 = 0.00008
sequential reduction example 2:  0.000594563
sequential reduction example 3:  0.000246565
sequential reduction example 4:  1.050489971


SEQUENTIAL DOALL
sequential doall example 1:  0.000286561
sequential doall example 2:  0.000494953


CONCURRENT REDUCTION 
dispatch reduction example 1:  0.006035617
dispatch reduction example 2:  0.006202578
dispatch reduction example 4:  0.255792142


CONCURRENT DOALL
dispatch doall example 1:  0.001032457
dispatch example 2:  0.001134735



*/