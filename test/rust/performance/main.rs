use rayon::prelude::*;
use std::time::{Duration, Instant}; 
use std::thread::sleep;

const iterations: usize = 100000; 

fn main() {
    // We can use this function here, and define it somewhere later

  

    println!("SEQUENTIAL REDUCTION"); 
    reduction(); 
    println!("");

    println!("SEQUENTIAL DOALL"); 
    do_all(); 
    println!("");

    println!("PARALLEL REDUCTION"); 
    parallel_reduction(); 
    println!("");

    println!("PARALLEL DOALL"); 
    parallel_doall(); 
    println!(""); 
   
}


fn expensiveOP(n: i32) -> i32 {

    if n == 0 || n == 1 {
        return n; 
    } else {
        return expensiveOP(n-1) + expensiveOP(n-2); 
    }
}



fn reduction() -> () {


    let arr1: [i32; iterations] = [0; iterations];
    let arr2: [i32; iterations] = [0; iterations];


    let (mut a, mut b, mut c): (i32, i32, i32) = (0, 0, 0); 

    let mut now = Instant::now();
 

    for i in 0..iterations {
        a = a + 1; 
        c = c - 2; 

    }
     
    println!("Sequential reduction example 1: {}", now.elapsed().as_nanos());





    let mut localRes: i32 = 0; 
    now = Instant::now();

    for i in 0..arr1.len() {
        b = b + 2; 
        c = c - (i as i32); 
        let tmp = a; 
        a = tmp + (i as i32); 
        localRes = arr1[i] + 3 + localRes; 
    }
    println!("Sequential reduction example 2:{}", now.elapsed().as_nanos());



    let mut arrSum: i32 = 0; 
    let mut arrMul: i32 = 1; 

    now = Instant::now();

    for i in 0..arr1.len() {
        arrSum = arrSum + arr1[i]; 
        arrMul = arrMul + arr1[i]; 
    }
    println!("Sequential reduction example 3: {}", now.elapsed().as_nanos());



    a = 0; 
    c = 1; 

    now = Instant::now();

    for i in 0..20 {
        a = a + expensiveOP(i as i32); 
        c = c * expensiveOP(i as i32); 
    }
    println!("Sequential reduction example 4: {}", now.elapsed().as_nanos());


}




fn do_all() -> () {

    let mut arr1: [i32; iterations] = [0; iterations];
    let mut arr2: [i32; iterations] = [0; iterations];


    let mut now = Instant::now();

    for i in 0..arr1.len() {
        arr1[i] = 0; 
     }
     println!("Sequential doall example 1: {}",  now.elapsed().as_nanos()); 
  
 
    
    now = Instant::now();

    for i in 0..arr1.len() {

        let tmp = arr2[i]; 
        arr2[i] = arr1[i];  
        arr1[i] = tmp; 
 
     } 
    println!("Sequential doall example 2: {}", now.elapsed().as_nanos()); 
    
    }    


fn parallel_reduction() -> () {

     
    let mut arr1: [i32; iterations] = [0; iterations];
    let mut arr2: [i32; iterations] = [0; iterations];

    let (mut a, mut b, mut c): (i32, i128, i32) = (0, 0, 0); 



    let mut now = Instant::now();

    let result = (0..iterations)
            .into_par_iter()
            .map(|_| (1, -2))
            .reduce(
                || (a, b), 
                |(a1,  c1), (a2, c2)| (a1 + a2,  c1 + c2),
            );


    println!("Parallel reduction example 1 {}", now.elapsed().as_nanos()); 


  


    now = Instant::now();

    let result = (0..iterations)
            .into_par_iter()
            .map(|i| ((i as i32),  2 , - (i as i32)))
            .reduce(
                || (a, b, c), 
                |(a1, b1, c1), (a2, b2, c2)| (a1 + a2, b1 * b2, c1 + c2),
            );    

    println!("Parallel reduction example 2 {}", now.elapsed().as_nanos());         
        
 
    

    let mut arrSum: i32 = 0; 
    let mut arrMul: i32 = 1; 

    now = Instant::now();

    let reduction = (0..arr1.len())
    .into_par_iter()
    .map(|i| (arr1[i], arr2[i]))
    .reduce(
        || (arrSum, arrMul), 
        |(a1,  c1), (a2, c2)| (a1 + a2,  c1 * c2),
    );


    println!("Parallel reduction example 3: {}", now.elapsed().as_nanos());





    now = Instant::now();

    (0..20)
    .into_par_iter()
    .map(|i| (expensiveOP(i as i32), expensiveOP(i as i32)))
    .reduce(
        || (a, c), 
        |(a1,  c1), (a2, c2)| (a1 + a2,  c1 * c2),
    );


    println!("Parallel reduction example 4: {}", now.elapsed().as_nanos());


} 



fn parallel_doall() -> () {

    let mut arr1: [i32; iterations] = [0; iterations];

    let mut arr2: [i32; iterations] = [0; iterations]; 


    let mut now = Instant::now();

    arr1.par_iter_mut()
    .for_each(|x| {
        *x = 1;
    });


    println!("Parallel doall example 1: {}", now.elapsed().as_nanos());


    
    now = Instant::now();

    arr1
    .par_iter_mut()
    .zip(arr2.par_iter_mut())
    .for_each(|tuple| {
        // store *tuple1 in temp and do the same swap
        let tmp = *tuple.0; 
        *tuple.0 = *tuple.1;
        *tuple.1 = tmp; 

    });

    println!("Parallel doall example 2: {}", now.elapsed().as_nanos());
    







}