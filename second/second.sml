fun length [] = 0
    | length (x::xs) = 1 + length xs;

fun split_by_index [] _ = ([],[])
    | split_by_index _ [] = ([],[])
    | split_by_index (x::xs) (i::is) =
    let 
        val (even, odd) = split_by_index xs is
    in
        if i mod 2 =0
        then (x::even,odd)
        else (even,x::odd)
    end

val elements = ["one", "two", "three", "four", "five"];
val indices = [1, 2, 3, 4, 5];
val (even_list, odd_list) = split_by_index elements indices;
