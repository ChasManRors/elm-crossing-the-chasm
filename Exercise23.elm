module Exercise23 exposing (..)

import Html exposing (..)


sentence : String
sentence =
    "Fred did feed the three red deer"


wordCount : String -> Int
wordCount =
    (String.words >> List.length)


main : Html msg
main =
 -- Html.text (toString (wordCount sentence))

    -- wordCount sentence
    --  |> toString
    --  |> Html.text

    Html.text ("The sentence " ++ sentence ++ " has " ++ (toString (wordCount sentence)) ++ " words in it.")

    -- ("The sentence " ++ sentence ++ " has " ++ (toString (wordCount sentence)) ++ " words in it.")
    --     |> Html.text

        -- sentence
        -- |> wordCount
        -- |> toString
        -- |> Html.text
