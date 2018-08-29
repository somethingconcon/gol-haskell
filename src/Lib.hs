module Lib
    ( -- board
      -- ,start
    ) where

data Board = 
  New Int Int 
  | Next Board 
  | End

-- start :: Int -> Int -> IO Board
-- start x y = IO New x y

-- board :: Board -> IO (Board)
-- board b = IO b
--   New 

