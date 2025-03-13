(* تابع length برای محاسبه طول لیست *)
fun length [] = 0
  | length (_::xs) = 1 + length xs;

(* تابع split_by_index برای جدا کردن عناصر بر اساس اندیس *)
fun split_by_index [] _ = ([], []) (* حالت پایه: لیست خالی *)
  | split_by_index (x::xs) (i::is) =
    let
        val (even, odd) = split_by_index xs is (* فراخوانی بازگشتی برای بقیه لیست *)
    in
        if i mod 2 = 0
        then (x::even, odd) (* اگر اندیس زوج باشد، عنصر به even اضافه شود *)
        else (even, x::odd) (* اگر اندیس فرد باشد، عنصر به odd اضافه شود *)
    end
  | split_by_index _ [] = ([], []); (* اگر لیست اندیس‌ها خالی باشد *)

(* تست تابع *)
val elements = ["one", "two", "three", "four", "five"];
val indices = [1, 2, 3, 4, 5];
val (even_list, odd_list) = split_by_index elements indices;