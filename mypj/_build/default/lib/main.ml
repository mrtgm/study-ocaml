open Station
(*駅名と駅名リストを受取り、その駅のレコードを返す*)

let hyoji (ekimei: ekimei_t) = match ekimei with
| {
  kanji= k;
  kana = ka;
  shozoku = s;
} -> s ^ "," ^ k ^ "(" ^ ka ^ ")"





(*ローマ字表記の駅名を受取り、漢字表記を返す*)
let rec romaji_to_kanji str list = match list with
| [] -> ""
| { romaji = r; kanji = k; } :: rest -> if r = str then k else romaji_to_kanji str rest

()



let test = hyoji {kanji="茗荷谷"; kana="みょうがだに"; romaji="myogadani"; shozoku="丸の内線"} = "丸の内線,茗荷谷"
