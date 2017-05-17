module Main where

import Test.Tasty
import Test.Tasty.HUnit

import Conway

main :: IO ()
main = do
  defaultMain (testGroup "Conway Tests" [anEmptyGridDoesNotRegen])

anEmptyGridDoesNotRegen :: TestTree
anEmptyGridDoesNotRegen = testCase "An empty grid does not regenerate"
  (assertEqual "Should not regenerate" emptyGrid (nextState emptyGrid))
  where emptyGrid = [[0 | x <- [1..6]] | y <- [1..8]]
