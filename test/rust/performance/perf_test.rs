fn main() {
    // We can use this function here, and define it somewhere later
    reduction(); 
    do_all(); 
   
}


fn expensiveOP(n: i32) -> i32 {

    if n == 0 || n == 1 {
        return n; 
    } else {
        return expensiveOP(n-1) + expensiveOP(n-2); 
    }
}

fn reduction() -> () {

    let iterations: i32 = 1000; 
    let localArr: [i32; 10] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];

    let (mut a, mut b, mut c): (i32, i32, i32) = (0, 0, 0); 

    for i in 0..iterations {
        a = a + 1; 
        b = b * 5; 
        c = c - 2; 
    }

    let mut localRes: i32 = 0; 
    for i in 0..localArr.len() {
        b = b * 5; 
        c = c - (i as i32); 
        let tmp = a; 
        a = tmp + (i as i32); 
        localRes = localArr[i] * 3 + localRes; 
    }

    let mut arrSum: i32 = 0; 
    let mut arrMul: i32 = 1; 

    for i in 0..localArr.len() {
        arrSum = arrSum + localArr[i]; 
        arrMul = arrMul + localArr[i]; 
    }

    a = 0; 
    c = 1; 

    for i in 0..20 {
        a = a + expensiveOP(i as i32); 
        c = c * expensiveOP(i as i32); 
    }


}




fn do_all() -> () {

    let mut localarr: [i32; 10] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];
    let mut arr: [i32; 10] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];



    for i in 0..arr.len() {
        arr[i] = 0; 
     }
  
 
     // negative example
     for i in 0..arr.len() {

        let tmp = localarr[i]; 
        localarr[i] = arr[i];  
        arr[i] = tmp; 
 
     }  

}
