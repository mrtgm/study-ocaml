

let rec fac n = if n = 0 then 1 else n * fac (n - 1)

let test1 = fac 0 = 1
let test2 = fac 1 = 1
let test3 = fac 2 = 2
let test4 = fac 3 = 6
let test5 = fac 4 = 24
let test6 = fac 10 = 3628800


let rec power m n = if n = 0 then 1 else m * power m (n - 1)

let test1 = power 3 0 = 1
let test2 = power 3 1 = 3
let test3 = power 3 2 = 9
let test4 = power 3 3 = 27


(* 4 -> 0^2 + 1^2 + 2^2 + 3^2 + 4^2 = 30 *)
let rec sum_of_square n = if n = 0 then 0 else n * n + sum_of_square (n - 1)
let test1 = sum_of_square 4 = 30

(* 漸化式 *)
let rec a n = if n = 1 then 3 else 2 * a(n - 1) - 1
