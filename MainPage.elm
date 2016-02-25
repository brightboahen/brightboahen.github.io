module MainPage where

import Html exposing (html)
import Color exposing (..)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)
import Graphics.Collage exposing (..)
import Graphics.Element exposing (..)

--- Model ---
type alias PageModels =
    {
        pageWords : List String,
        highScore : Int,
        iniTimer : Int
    }
pageModel : PageModel
pageModel =
    {
        pageWords: ["bright","boahen"],
        highScore : 0,
        iniTimer : 0
    }


--- Update ---
type Action =
    Start
    | Pause
    | GameOver
    | Reset

update : Action -> PageModels -> PageModels


--- View ---

view : Signal.Address Action -> Model -> Html