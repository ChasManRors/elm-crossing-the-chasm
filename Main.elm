module Login exposing (..)

import Html exposing (..)


add a b =
    a + b


result =
    add 1 2 |> add 10


main =
    toString result |> Html.text
