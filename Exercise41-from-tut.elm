module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)


-- model


type alias Model =
  { calories : Int
  , input : Int
  , error : Maybe String}


initModel : Model
initModel =
    Model 0 0 Nothing



-- update


type Msg
    = AddCalorie
    | Input String
    | Clear


update : Msg -> Model -> Model
update msg model =
    case msg of

        Input val ->
            case String.toInt val of
                Ok input ->
                    { model | input = input, error = Nothing }
                Err err ->
                    { model | input = 0, error = Just err }


        -- AddCalorie ->
        --     model + 1

        -- Clear ->
        --     initModel

        _ ->
            initModel

-- view


view : Model -> Html Msg
view model =
    div []
        [ h3 []
            [ text ("Total Calories: " ++ (toString model)) ]
        , button
            [ type_ "button"
            , onClick AddCalorie
            ]
            [ text "Add" ]
        , button
            [ type_ "button"
            , onClick Clear
            ]
            [ text "Clear" ]
        ]


main : Program Never Model Msg
main =
    Html.beginnerProgram
        { model = initModel
        , update = update
        , view = view
        }
