pub fn main() {

    let mut a:i32 = 0; 
    let mut b:i32 = 0; 
    let mut c:i32 = 0; 
    let mut d:i32 = 0; 
    let mut arr: [i32; 5] = [1, 2, 3, 4, 5]; 
    for i in 0..arr.len() {
        a = a + 1; 
        b = b - 5; 
        c = c + arr[i]; 
        d = d * arr[i];
    
 }
}
