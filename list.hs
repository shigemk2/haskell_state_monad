-- これは副作用が発生しない奴
writeList list index value =
    take index list ++ [value] ++ drop (index + 1) list

main = do
    let a = [1,2,3]
    print a

    let b = writeList a 0 9
    print b

    let c = writeList b 2 9
    print c
