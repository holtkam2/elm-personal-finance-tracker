module Main exposing (main)

import Html exposing (..)
import Html.Attributes exposing (..)


banner =
    div [ class "banner" ]
        [ div []


            [ h1 [] [text "conduit"]
            , p [] [text "a place to share your knowledge"]
            ]

        ]



feed =
    div [] [ text "(In the future we’ll display a feed of articles here!)" ]


main =
    div [ class "home-page" ]
        [ banner
        , div []
            [ div []
                [ div [] [ feed ]
                , div [] [ feed ]
                , div [] []
                ]
            ]
        ]
