(* sum list *)


(* fun sumlist [] = 0
    | sumlist (x::xs) = x + sumlist(xs);

val num = [1,2,3]
val total = sumlist num
 *)


(* reverse list *)

(* approge 1 fast *)


fun reverse_list xs =
    let
        fun rev_acc [] acc = acc  (* حالت پایه: وقتی لیست ورودی خالی شد، مقدار انباشته را برمی‌گرداند *)
          | rev_acc (x::xs) acc = rev_acc xs (x::acc)  (* عنصر x را به ابتدای لیست انباشته اضافه می‌کند *)
    in 
        rev_acc xs []
    end;

(* approge 2 not fast *)


(* fun reverselist [] = [] *)
    (* | reverselist(x::xs) = reverselist xs :: x *)
    (* | reverselist(x::xs) = reverselist xs @ [x] *)


val items = ["a", "b", "c", "d"];
(* val rev_items = reverselist items; خروجی: ["d", "c", "b", "a"] *)
val rev_items = reverse_list items;

