use rayon::prelude::*;
use std::time::{Duration, Instant}; 
use std::thread::sleep;

const MAX_N: usize = 100;

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


    let iterations: i32 = 10000; 
    let localArr: [i32; 10] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];

    let (mut a, mut b, mut c): (i32, i32, i32) = (0, 0, 0); 

    let mut now = Instant::now();
    //let dur: Duration = Duration::new(2, 0); 

    //sleep(dur);
    //println!("{}", "sleeping"); 

    for i in 0..iterations {
        a = a + 1; 
        c = c - 2; 

    }
     
    println!("Sequential reduction example 1: {}", now.elapsed().as_nanos());



   


    let mut localRes: i32 = 0; 
    now = Instant::now();

    for i in 0..localArr.len() {
        b = b * 2; 
        c = c - (i as i32); 
        let tmp = a; 
        a = tmp + (i as i32); 
        localRes = localArr[i] * 3 + localRes; 
    }
    println!("Sequential reduction example 2:{}", now.elapsed().as_nanos());



    let mut arrSum: i32 = 0; 
    let mut arrMul: i32 = 1; 

    now = Instant::now();

    for i in 0..localArr.len() {
        arrSum = arrSum + localArr[i]; 
        arrMul = arrMul + localArr[i]; 
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

    //let mut localarr: [i32; 10] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];
    //let mut arr: [i32; 10] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];
    let mut localarr: [i32; 20000] = [0; 20000]; 
    let mut arr: [i32; 20000] = [0; 20000];


    let mut now = Instant::now();

    for i in 0..arr.len() {
        arr[i] = 0; 
     }
     println!("Sequential doall example 1: {}",  now.elapsed().as_nanos()); 
  
 
    
    now = Instant::now();

    for i in 0..arr.len() {

        let tmp = localarr[i]; 
        localarr[i] = arr[i];  
        arr[i] = tmp; 
 
     } 
    println!("Sequential doall example 2: {}", now.elapsed().as_nanos()/1000); 
    
    }    


fn parallel_reduction() -> () {

    /*let a: i32 = 0..iterations.par_iter() // <-- just change that!
    .map(|&i| 1 )
    .sum(); 

    println!("sum = {}", a); */
    // how to map this best to parallel iterators?

    let iterations: i32 = 10000; 
    let localArr: [i32; MAX_N] = [0; MAX_N];

    let (mut a, mut b, mut c): (i32, i128, i32) = (0, 0, 0); 

    
    /*let sums = [(0, 1), (5, 6), (16, 2), (8, 9)]
           .par_iter()        // iterating over &(i32, i32)
           .cloned()          // iterating over (i32, i32)
           .reduce(|| (0, 0), // the "identity" is 0 in both columns
                   |a, b| (a.0 + b.0, a.1 + b.1));*/

          

    let mut now = Instant::now();



    let result = (0..iterations)
            .into_par_iter()
            .map(|_| (1, -2))
            .reduce(
                || (a, b), 
                |(a1,  c1), (a2, c2)| (a1 + a2,  c1 + c2),
            );


    println!("Parallel reduction example 1 {}", now.elapsed().as_nanos()); 


  

    // without array for this one due to limited closure access
    now = Instant::now();

    let result = (0..iterations)
            .into_par_iter()
            .map(|i| ((i as i32),  2 , - (i as i32)))
            .reduce(
                || (a, b, c), 
                |(a1, b1, c1), (a2, b2, c2)| (a1 + a2, b1 * b2, c1 + c2),
            );    

    println!("Parallel reduction example 2 {}", now.elapsed().as_nanos());         
        
    // let r = (0..4)
    // .into_par_iter()
    // .map(|_| 1)
    // .for_each(|i| {
    //     println!("printing a in iteration: {}", i); 
    // });
    // // .reduce(|| a, 
    // //     |a1, a2| a1 + a2); 

    let mut arrSum: i32 = 0; 
    let mut arrMul: i32 = 1; 

    now = Instant::now();

    let arraySum = (0..localArr.len())
    .into_par_iter()
    .map(|i| (localArr[i], localArr[i]))
    .reduce(
        || (arrSum, arrMul), 
        |(a1,  c1), (a2, c2)| (a1 + a2,  c1 * c2),
    );


    println!("Parallel reduction example 3: {}", now.elapsed().as_nanos());




    now = Instant::now();

    //function call

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

    let mut localarr: [i32; 20000] = [1; 20000]; 
    let mut arr: [i32; 20000] = [7; 20000];

    let mut now = Instant::now();



    arr.par_iter_mut()
    .for_each(|x| {
        *x = 8;
    });

    //(0..5).into_par_iter().map(|x| x * 2);


    println!("Parallel doall example 1: {}", now.elapsed().as_nanos());




/*
    (0..localarr.len())
    .into_par_iter()
    .for_each(|index| {
        let tmp = localarr[index]; 
        localarr[index] = arr[index];  
        arr[index] = tmp;
    }); */

    
    now = Instant::now();

    localarr
    .par_iter_mut()
    .zip(arr.par_iter_mut())
    .for_each(|tuple| {
        // store *tuple1 in temp and do the same swap
        let tmp = *tuple.0; 
        *tuple.0 = *tuple.1;
        *tuple.1 = tmp; 

    });

    println!("Parallel doall example 2: {}", now.elapsed().as_nanos()/1000);
    



    

    //maybe when labeled as unsafe?
    (0..arr.len()).into_par_iter()
    .for_each(|i| {
        let mut tmp = localarr[i]; 
        localarr[i] = arr[i];
        arr[i] = tmp; 
     }
    );

    println!("Parallel doall example 2: {}", now.elapsed().as_nanos()); 






}

