
let rec map f lst = match lst with
| []-> []
| first :: rest -> f first :: map f rest

let map_sqrt lst = map sqrt lst


let twice7 f = f (f 7)

let add3 x = x + 3
let time2 x = x * 2

(* 2回関数を実行する関数を返す関数笑 *)
let twice f = let g x = f (f x) in g

let twice2 = twice twice

let test1 = (twice add3) 7 = 13


(* 'a -> 'a *)
let a1 x = x

(* 'a -> 'b -> 'a *)
let a2 a b = a

(* 'a -> 'b -> 'b *)
let a3 a b = b

(* 'a -> ('a -> 'b) -> 'a *)
let a4 a f = f a

(* ('a -> 'b) -> ('b -> 'c) -> 'a -> 'c *)
let a5 f1 f2 = let g x = f2 (f1 x) in g


let compose f1 f2 = let g x = f1 (f2 x) in g
let test1 = (compose time2 add3) 4 = 14 (* 2*(3+4)=14 *)

