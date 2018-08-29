{-# LANGUAGE DataKinds #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Main where

import Lib

main :: IO ()
main = do
  p <- get
  readFile getSeed
-- main = do
--   b <- start
--   n <- Next(b)

getSeed :: String -> IO FilePath
getSeed path = do 
  -- using File specific location checking instead of "Path"
  b <- doesFileExist path
  p <- if b
       then path
       else error "derp!"
