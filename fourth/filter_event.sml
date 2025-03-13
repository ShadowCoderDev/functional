
val input = [1,2,3,4,5,6];
val output = [2,4,6];

fun filter_event [] = []
    | filter_event (x::xs) = 
    if x mod 2 =0 
    then x::filter_event xs
    else filter_event xs;

val final_list = filter_event input;