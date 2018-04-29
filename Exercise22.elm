module Exercise22 exposing (..)

import Html exposing (..)


(~=) a b =
    (String.left 1 a) == (String.left 1 b)


result a b =
    (~=) a b

a =
    "Fred"
b =
    "Barney"


main =
    Html.text ("The first letter of the names " ++ a ++ " and " ++ b ++ " are the same: " ++ (toString (result a b)))
