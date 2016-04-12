module Hello (main) where

import Html exposing (Html)
import Mouse
import Signal exposing (Signal, Address)

main : Signal Html

main = Mouse.position |> Signal.map view

view : (Int, Int) -> Html
view (x, y) = Html.div [] [ Html.text( "x  =" ++ (toString x)) ]
