{ name = "marionette.snake-demo"
, dependencies =
  [ "aff"
  , "aff-promise"
  , "arrays"
  , "bifunctors"
  , "console"
  , "datetime"
  , "debug"
  , "effect"
  , "either"
  , "enums"
  , "foldable-traversable"
  , "marionette"
  , "maybe"
  , "newtype"
  , "node-readline"
  , "now"
  , "ordered-collections"
  , "partial"
  , "prelude"
  , "random"
  , "refs"
  , "strings"
  , "transformers"
  , "tuples"
  , "unfoldable"
  , "unsafe-coerce"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
