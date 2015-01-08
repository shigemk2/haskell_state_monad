import Control.Monad
import Control.Monad.ST
import Data.Array.ST
import Data.STRef

main = do
    let bf = "+++++++++[>++++++++<-]>."
    let jmp = runST $ do
        jmp <- newArray (0, length bf - 1) 0 :: ST s (STUArray s Int Int)
        loops <- newSTRef []
        forM_ [0..length bf - 1] $ \i -> do
            case bf !! i of
              '[' -> modifySTRef loops (i:)
              ']' -> do
                  start <- do
                        (h:t) <- readSTRef loops
                        writeSTRef loops t
                        return h
                  writeArray jmp start i
                  writeArray jmp i start
              _ -> return ()
        getElems jmp
    print jmp

-- var bf = "+++++++++[>++++++++<-]>.";

-- var jmp = [];
-- for (var i = 0, loops = []; i < bf.length; ++i) {
--     jmp[i] = 0;
--     switch (bf[i]) {
--     case '[':
--         loops.push(i);
--         break;
--     case ']':
--         var start = loops.pop();
--         jmp[start] = i;
--         jmp[i] = start;
--         break;
--     }
-- }
-- console.log(jmp);
