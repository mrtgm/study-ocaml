
(*受け取ったlistの要素それぞれの先頭にaをくつける*)
let rec add_to_each (a:int) list = match list with
 | []-> []
 | first :: rest -> (a :: first) :: add_to_each a rest

(*受け取ったlistの要素の接頭語のリストを求める、先頭を取り出す+残りのリストの先頭にそれを加える*)
let rec prefix list = match list with
 | [] -> []
 | first :: rest -> [first]:: add_to_each first (prefix rest)

let test1 = add_to_each 1 [] = []
let test2 = add_to_each 1 [[2]] = [[1; 2;]]
let test3 = add_to_each 1 [[2];[2;3;]] = [[1;2;];[1;2;3;]]

let test4 = prefix [1;2;3;4] = [[1];[1;2;];[1;2;3;];[1;2;3;4]]



let first_el lst = match lst with
| [] -> 0
| first :: rest -> first

(*昇順に並んでるリストと整数nを受取り、昇順となる位置にnを挿入する*)
(*insert: int -> list -> list *)
let rec insert (a: int) lst = match lst with
| [] -> [a]
| first :: rest ->
  if first >= a then a :: lst
  else first :: insert a rest

let test1 = insert 5 [1;3;4;7;8;] = [1;3;4;5;7;8;]
let test2 = insert 2 [1;3;] = [1;2;3;]

(*整数のリストを受け取り、それを昇順にする*)
(*ins_sort: int list -> int list*)
let rec ins_sort lst = match lst with
  | [] -> []
  | first :: rest -> insert first (ins_sort rest)

let test1 = ins_sort [3;4;1;2;] = [1;2;3;4;]

type student = {
  tensuu: int;
}

let rec insert_student ({tensuu = ta;} as a) lst = match lst with
| [] -> [a]
| ({ tensuu = tb } as b) :: rest ->
  if tb >= ta then a :: lst
  else b :: insert_student a rest

let rec student_sort lst = match lst with
  | [] -> []
  | first :: rest -> insert_student first (student_sort rest)

let test1 = student_sort [{tensuu = 100}; {tensuu = 80}] = [{tensuu = 80}; {tensuu = 100}]

(* 受け取った lst の中の最小値を返す*)
let rec minimum lst = match lst with
| [] -> max_int
| first :: rest ->
    if first <= minimum rest
    then first
    else minimum rest

let test1 = minimum [8;3;2;1;] = 1

let former_is_greater a b = a.tensuu >= b.tensuu

let rec gakusei_max lst = match lst with
| [] -> { tensuu = min_int }
| first :: rest ->
    let max_rest = gakusei_max rest in
    if former_is_greater first max_rest then first else max_rest

let test1 = gakusei_max [{tensuu = 100}; {tensuu = 80}] = {tensuu = 100}



type studentB = {
  seiseki: string;
}

(* 学生リスト lst のうち各成績の人数を集計する *)
let rec shukei lst = match lst with
| []-> (0,0,0,0)
| {seiseki = s} :: rest ->
  let (a,b,c,d) = shukei rest in
    if s == "A" then (a+1,b,c,d)
    else if s == "B" then (a,b+1,c,d)
    else if s == "C" then (a,b,c+ 1,d)
    else (a,b,c,d+1)

(* lst1 と lst2 を結合する*)
let rec append lst1 lst2 = match lst1 with
| [] -> []
| first :: rest -> []

let test1 = append [] [] = []
let test2  = append [] [1;2] = [1;2]
let test3 = append [1;2] [3;4] = [1;2;3;4]



