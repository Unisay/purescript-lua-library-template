{ name = "purescript-lua-library"
, dependencies = [] : List Text
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
, backend =
    ''
    pslua \
    --foreign-path foreign \
    --ps-output output \
    --lua-output-file dist/lib.lua \
    --entry Lib \
    ''
}
