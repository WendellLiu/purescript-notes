# Descripton
use ADTs, newtype and instance to implement type-level logging

## newtype
> "Newtypes must define exactly one constructor, and that constructor must take exactly one argument."

> "Newtypes will become important when we cover type classes in the next chapter, since they allow us to attach different behavior to a type without changing its representation at runtime."

(Phil Freeman. "PureScript by Example")

```purescript
newtype FirstName = FirstName String

name = FirstName "John"
```

## Algebraic Data Types (or ADTs) 

```purescript
data Name = Name { firstName :: FirstName, lastName :: LastName }
data Maybe a = Nothing | Just a
```

## instance
> "A type class instance contains implementations of the functions defined in a type class, specialized to a particular type."

> "In PureScript, type class instances are named to aid the readability of the generated JavaScript."

(Phil Freeman. "PureScript by Example")

```purescript
instance showName :: Show Name where
  show (Name {firstName: FirstName f, lastName: LastName l}) = f <> " " <> l
```

