module Login exposing (..)

import Html exposing (..)

add a b =
    a + b

result =
    add 1 2


main =
    Html.text (toString result)
