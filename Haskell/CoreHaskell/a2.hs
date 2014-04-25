--applyAll takes a list of funcitons and applies each funciton to its 
--second parameter item x
applyAll = \fs -> \x -> foldr (\f -> \acc-> (f x) : acc )[] fs

--remove function returns a list by those components of list 'xs' which 
--do not satisfy 'p'
remove = \p -> foldr(\x -> \acc -> if not( p x) then x:acc else acc)[] 

--count function returns the number of times element 'x' appears
--in list 'xs'
count = \x -> \xs -> length(filter (\n -> n == x) xs)

--maximum function returns the maximum number in a non-empty numeric
--list 'ns'
maximum = foldr(\n1 -> \n2 -> if (n1 > n2) then n1 else n2 )0

--append function returns the list formed by joining lists 'xs' and
--'ys', in that order
append = \xs -> \ys -> foldr(\y -> \x -> y:x)ys xs