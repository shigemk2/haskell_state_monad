test x =
    (a, b)
    where
      a = (+ 1) x
      b = (* 2) x

main = do
    print $ test 5
