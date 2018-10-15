module Main where

import Prelude (class Show, Unit, (<>))
import Data.Show
import Effect (Effect)
import Effect.Console (logShow)


newtype FirstName = FirstName String
newtype LastName = LastName String

data Name = Name { firstName :: FirstName, lastName :: LastName }

name :: Name
name = Name { firstName: FirstName "Wendell", lastName: LastName "Liu" }

instance showName :: Show Name where
  show (Name {firstName: FirstName f, lastName: LastName l}) = f <> " " <> l



main :: Effect Unit
main = do
  logShow name
