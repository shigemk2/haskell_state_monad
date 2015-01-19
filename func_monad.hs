test = do
    a <- (+ 1)     -- (+ 1) 5
    b <- (* 2)     -- (* 2) 5
    return (a, b)

main = do
    print $ test 5
