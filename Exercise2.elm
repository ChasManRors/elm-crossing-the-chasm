module Exercise2 exposing (..)

import Html exposing (..)


--  "JAMES MOORE - name length: 11"
-- or "foo bar - name length: 7"

name = "foo bar"

len =
    String.length name |> toString

result a =
        if (String.length name) > 10 then
        String.toUpper a ++ " name length: " ++ len
    else
        a ++ " - " ++ " name length: " ++ len

main =
    Html.text (result name)
