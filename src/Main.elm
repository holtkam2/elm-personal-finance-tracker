module Main exposing (main)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import Settings exposing (..)
import Results exposing (..)


-- MODEL
type alias Model =
    { tags : List String
    , selectedTag : String
    , allArticles : List String
    }


initialModel : Model
initialModel = 
    { tags = ["tag1", "tag2"]
    , selectedTag = "elm"
    , allArticles = []
    }



-- UPDATE
type alias Msg =
    { description : String
    , data : String
    }


update: Msg -> Model -> Model
update msg model =
    if msg.description == "ClickedTag" then
        { model | selectedTag = msg.data }

    else
        model



-- VIEW
view model = 
  div [] [
    div [] [Settings.view model],
    div [] [Results.view model]
  ]




-- MAIN
main : Program () Model Msg
main =
    Browser.sandbox
        { init = initialModel
        , view = view
        , update = update
        }
