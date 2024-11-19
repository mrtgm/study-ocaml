

let rec filter p lst = match lst with
| [] -> []
| first :: rest -> if p first then first :: filter p rest else filter p rest


let predicate x = x > 0
let test1 = filter predicate [-3;4;5] = [4;5]


let rec sum lst = match lst with
| [] -> 0
| first :: rest -> first + sum rest

let rec length lst = match lst with
| [] -> 0
| first :: rest -> 1 + length rest

let rec append lst1 lst2 = match lst2 with
| [] -> lst1
| first :: rest -> first :: append rest lst1

let rec fold_right f lst init = match lst with
| [] -> init
| first :: rest -> f first (fold_right f rest init)


let sum lst =
  let add_int a b = a + b in (* 局所関数定義 *)
  fold_right add_int lst 0

let sum lst = fold_right (+) lst 0

let length lst =
  fold_right (fun a b -> b + 1) lst 0

let append lst1 lst2 =
  fold_right (fun a b -> a :: b) lst1 lst2


(* n から 1 までのリストを作る *)
let rec enumarate n = if n = 0 then [] else n :: enumarate (n - 1)
(* 約数を列挙する *)
let divisor n = filter (fun x -> n mod x = 0) (enumarate n)
(* 完全数（その数を除いた約数の和が、その数自身と等しくなる）を求める*)
let perfect m = filter (fun n -> fold_right (+) (divisor n) 0 - n = n) (enumarate m)
