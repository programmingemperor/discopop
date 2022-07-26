
pub fn main() {

    let mut a:i32 = 0; 
    let mut b:i32 = 0; 
    let mut c:i32 = 0; 

    let mut arr: [i32; 5] = [1, 2, 3, 4, 5]; 

    for i in 0..arr.len() {
        arr[i] = 0; 
    }
}


pub fn main() {

    let mut a:i32 = 0; 
    let mut b:i32 = 0; 
    let mut c:i32 = 0; 

    let mut arr: [i32; 5] = [1, 2, 3, 4, 5]; 
    for i in 0..arr.len() {
        a = a + 1; 
        b = b - 5; 
        c = c + arr[i]; 
        d = d * arr[i];
    
    }
}





use rayon::prelude::*;

pub fn main() {

    let mut arr: [i32; 5] = [1, 2, 3, 4, 5]; 
   
    arr.par_iter_mut()
    .for_each(|x| {
        // what about index[i]?
        *x = 0;
    });
        
    });
}


use rayon::prelude::*;

pub fn main() {

    let mut arr: [i32; 5] = [1, 2, 3, 4, 5];


    let mut a:i32 = 0; 
    let mut b:i32 = 0; 
    let mut c:i32 = 0; 

    let mut arr: [i32; 5] = [1, 2, 3, 4, 5]; 
    for i in 0..arr.len() {
        a = a + 1; 
        b = b - 5; 
        c = c + arr[i]; 
        d = d * arr[i];
    
    
    // how to implement this?
    let accumulated = arr.par_iter_mut()
    //can add foreach if some non reduction computation needs to be done
    .reduce(| 0, |a, b, c, d| (a ));
    
        
    });
}

