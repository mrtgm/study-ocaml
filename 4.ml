(* 時給 *)
let jikyu = 950
(* 基本給 *)
let kihonkyu = 100

(* 目的: 働いた時間 x に応じた計算 *)
(* kyuyo: int -> int *)
let kyuyo x = kihonkyu + x * jikyu

let test1 = kyuyo 25 = 23850
let test2 = kyuyo 28 = 26700
let test3 = kyuyo 31 = 29550


(* 目的: 鶴の数 x に応じて足の数を計算する*)
(* tsuru_no_ashi: int -> int *)
let tsuru_no_ashi x = x * 2
let kame_no_ashi x = x * 4

let test1 = tsuru_no_ashi 3 = 6
let test2 = kame_no_ashi 2 = 8


(* 目的: 鶴の数 x 亀の数 y に応じて足の数の合計を計算する*)
(* tsurukame_no_ashi: int -> int -> int *)
let tsurukame_no_ashi x y = tsuru_no_ashi x + kame_no_ashi y


(* 目的: 鶴と亀の数の合計 x と足の合計 y を与えられたら鶴の数を返す*)
(* tsurukame: int -> int -> int *)
let tsurukame x y = x - (y - tsuru_no_ashi x) / 2

let test1 = tsurukame 4 12 = 2
let test2 = tsurukame 100 274 = 63

