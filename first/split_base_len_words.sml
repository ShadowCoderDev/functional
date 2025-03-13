fun length [] = 0
  | length (_::xs) = 1 + length xs

fun split_even_odd [] = ([], [])  (* Base case for empty list *)
  | split_even_odd (x::xs) =
      let
        val (evens, odds) = split_even_odd xs
      in
        if length (explode x) mod 2 = 0
        then (x::evens, odds)
        else (evens, x::odds)
      end;

val (even_list, odd_list) = split_even_odd ["apple", "banana", "cherry", "kiwi", "grape", "melon"];



