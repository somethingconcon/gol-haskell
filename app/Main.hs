{-# LANGUAGE DataKinds #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Main where

import Lib

main :: IO ()
main = do
  -- only worry about the first arg
  [p] <- getArgs
  -- provide a seed file to make the board
  f <- getSeedFile p
  -- validated file is passed to the fn that runs the game
  _ <- runGameOfLife f

getSeedFile :: String -> IO FilePath
getSeedFile path = do 
  -- using File specific location checking instead of "Path"
  b <- doesFileExist path
  p <- if b == True
       then path
       else selectSeedFile 5

selectSeedFile :: Int -> IO FilePath
selectSeedFile cnt =
  if cnt == 0 
  then 
    throwError "boom" 
  else do
    _ <- putStrLn "provided file does exist on this filesystem. Please choose one from the list provided." 
    f <- getLine
    b <- doesFileExist f
    if b == True 
    then 
    else selectSeedFile(cnt - 1)

runGameOfLife :: FilePath -> IO ()
runGameOfLife f = putStrLn f




