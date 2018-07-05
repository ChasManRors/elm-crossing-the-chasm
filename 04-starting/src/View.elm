module View exposing (..)


import Html exposing (..)
import Models exposing (Model)
import Msgs exposing (Msg)
import Players.List

-- VIEW

view : Model -> Html Msg
view model =
    div []
        [ page model ]


page : Model -> Html Msg
page model =
    Players.List.view model.players
