import Control.Monad.Writer

a `bind` b = writer $
    let (r1, w1) = runWriter a
        (r2, w2) = runWriter (b r1)
    in  (r2, w1 ++ w2)

return' x = writer (x, [])
tell' x = writer ((), x)

test = execWriter $
    tell' "Hello" `bind` \_ ->
    tell' ", "    `bind` \_ ->
    tell' "World" `bind` \_ ->
    tell' "!!"    `bind` \_ ->
    return' ()

main = print test
