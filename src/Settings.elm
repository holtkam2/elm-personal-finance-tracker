module Settings exposing (initialModel, update, view)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)



-- MODEL
type alias Model = {}


initialModel : Model
initialModel = {}



-- UPDATE
type alias Msg =
    { description : String
    , data : String
    }


update: Msg -> Model -> Model
update msg model =
    if msg.description == "ClickedTag" then
        model

    else
        model



-- VIEW
view model =
    div [] [text "settings works! testing 123!"]
