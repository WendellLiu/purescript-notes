module Main where

import Prelude
import Data.Show

newtype FirstName = FirstName 

instance showName :: Show Name where
  show (Name {firstName: FirstName f, lastName: LastName l}) = f <> " " <> l
