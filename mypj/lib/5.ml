
let kyuyo x = if x < 30 then x * 980 else x * 200

let goukei a b c d e = a + b + c + d + e

(* 国語、数学、英語、理科、社会の5教科の点数を与えられたら、その合計点と平均を組にして返す *)
(* goukei_to_heikin: int -> int -> int -> int -> int -> (int * int) *)
let goukei_to_heikin a b c d e = (goukei a b c d e, goukei a b c d e / 5)
let res = goukei_to_heikin 1 2 3 4 5
let add_pair pair = match pair with
  (a,b) -> a+b

let add_pair (a,b) = a + b


let seiseki pair = match pair with
| (a, b) ->a ^ "さんの成績は" ^ b ^ "です"

