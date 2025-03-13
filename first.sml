fun split_even_odd [] = ([], [])  (* شرط پایانی برای لیست خالی *)
  | split_even_odd (x::xs) =
      let
        val (evens, odds) = split_even_odd xs
      in
        if String.size x mod 2 = 0
        then (x::evens, odds)
        else (evens, x::odds)
      end;

(* تست کردن تابع *)
val (even_list, odd_list) = split_even_odd ["apple", "banana", "cherry", "kiwi", "grape", "melon"];

(* چاپ نتایج *)
val _ = print ("Even length strings: " ^ String.concatWith ", " even_list ^ "\n");
val _ = print ("Odd length strings: " ^ String.concatWith ", " odd_list ^ "\n");
