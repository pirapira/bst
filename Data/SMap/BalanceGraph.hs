import Data.SMap.Balance

width :: Int
width = 600
height :: Int
height = 1200

bool_show :: Bool -> String
bool_show True = "0"
bool_show False = "1"

main :: IO ()
main = do
    putStrLn "P2" -- portable bitmap
    putStr (show width)
    putStr " "
    putStrLn (show height)
    putStrLn "1"
    mapM_ (\y ->
               do
                 mapM_ (\x -> (putStr $ (bool_show $ isBalancedSize x (height - 1 - y)) ++ " ")) [0..(width-1)]
                 putStrLn "")
   	  [0..(height-1)]

    -- mapM_ (\y -> mapM_ (\x -> (putStrLn $ show x ++ show (height - 1 - y))) [0..(width-1)])
    -- 	  [0..(height-1)]
