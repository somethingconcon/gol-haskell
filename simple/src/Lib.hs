module Lib
    ( board
      ,start
    ) where

data Board = 
  New Int Int 
  | Next Board 
  | End

start :: Int -> Int -> IO (New)
start x y = New x y

board :: Board -> IO (Board)
board b = b case 
  New 

