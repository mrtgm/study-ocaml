
type student = {
  name : string;
  tensuu : int;
}

let student_record = {name = "hoge"; tensuu = 10;}

let notice record = match record with
| {name = n;} -> {
  name = n;
  tensuu = if n = "tanaka" then 10 else 8
}


let li = {name ="1"; tensuu = 20} :: {name ="2"; tensuu = 20} :: {name ="3"; tensuu = 20} :: []

let a = notice student_record

let () = Printf.printf "Name: %s, Tensuu: %d\n" student_record.name student_record.tensuu

