(* List は再帰的なデータ構造*)
(*
  - []            空リスト、あるいは
  - first :: rest  最初の要素が first で残りのリストが rest（rest が自己参照）
    *)
let list = 1 :: 2 :: 3 :: [] ;;

let ret = match list with
  | [] -> "Empty!"
  | first :: rest -> "You have" ^ string_of_int first


(* 目的: 受け取った List に 0 が含まれているかを調べる *)
(* contain_zero: int list -> bool *)
let rec contain_zero list = match list with
  | [] -> false
  | first :: rest -> if first = 0 then true else contain_zero rest


type student = {
  grade: string;
}

(* 学生のうちから成績が A のものの数を数える *)
(* student list -> int *)
let rec count_grade_a_length (sts: student list) = match sts with
  | [] -> 0
  | {grade = g} :: rest ->
    if g = "A" then 1 + count_grade_a_length rest else count_grade_a_length rest


let rec filter_grade_a (sts: student list) = match sts with
| [] -> []
| {grade = g} as first :: rest ->
  if g = "A" then first :: filter_grade_a rest else filter_grade_a rest


let test2 = filter_grade_a [{grade = "A"}; {grade = "B"}; {grade = "A"}; ]





let rec sum lst = match lst with
  | [] -> 0
  | first :: rest -> first + sum rest



