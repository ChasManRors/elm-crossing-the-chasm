module View exposing (..)


import Html exposing (..)
import Models exposing (Model)
import Msgs exposing (Msg)


-- VIEW

view : Model -> Html Msg
view model =
    div []
        [ text model ]
