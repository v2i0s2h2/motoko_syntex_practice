import Array "mo:base/Array";
import Debug "mo:base/Debug";
actor {
  
  // Loops are handy, if you want to run the same code over and over again, each time with a different value.



/* for in loop in javascript
const numbers = [45, 4, 9, 16, 25];

let txt = "";
for (let x in numbers) {
  txt += numbers[x];
}
*/


// for loops in motoko you just need to pass an array
//                                argued -       '(vec{1;2;3;4;5;6})'   
public func using_for_loop_to_run_same_code(arr : [Nat]) : async Nat {
  var x = 0 ;
  for(values in arr.vals()){
x += values ;
  } ; // this error will show if you not put semicolon after curly bracket  unexpected token'return', expected one of the tokenor <phrase> sequence
  return x ;
  // (21 : nat)
};


// how to use Debug.print to print values on the server side

public func using_for_loop_and_Debug_to_print(arr : [Nat]) : async () {
  var x = 0 ;
  for(values in arr.vals()){
x += values ;
Debug.print(debug_show x)
  } ; 
};
/*
it print in server - Canister rrkah-fqaaa-aaaaa-aaaaq-cai] 1
[Canister rrkah-fqaaa-aaaaa-aaaaq-cai] 3
[Canister rrkah-fqaaa-aaaaa-aaaaq-cai] 6
[Canister rrkah-fqaaa-aaaaa-aaaaq-cai] 10
[Canister rrkah-fqaaa-aaaaa-aaaaq-cai] 15
[Canister rrkah-fqaaa-aaaaa-aaaaq-cai] 21
B
*/


  
};
