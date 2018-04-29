module Login exposing (..)

import Html exposing (..)


add a b =
    a + b


result =
    add 1 2 |> \a -> a % 2 == 0


main =
    toString result |> Html.text
