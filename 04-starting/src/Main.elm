module Main exposing (..)

import Html exposing (Html, div, text, program)
import Models exposing (..)
import Msgs exposing (..)
import Update exposing (..)
import View exposing (..)


init : ( Model, Cmd Msg )
init =
    ( "Hello", Cmd.none )


-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- MAIN


main : Program Never Model Msg
main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
