
fun zipp_list ([], []) = []
  | zipp_list (_, []) = []  (* اگر یکی از لیست‌ها خالی باشد *)
  | zipp_list ([], _) = []  
  | zipp_list (x::xs, y::ys) = (x, y) :: zipp_list (xs, ys);

val list1 = [1, 2, 3, 5];
val list2 = ["ali", "hassan", "mahdi"];
val zipped = zipp_list (list1, list2);

val output = [("ali", 1), ("hassan", 2), ("mahdi",3)]