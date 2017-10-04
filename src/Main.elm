module Main exposing (..)

import Html exposing (Html)
import Canvas exposing (Size, Point, Canvas, DrawOp(..))
import Color


main : Html a
main =
    Canvas.toHtml [] blueRectangle


blueRectangle : Canvas
blueRectangle =
    let
        size : Size
        size =
            { width = 400
            , height = 300
            }
    in
        Canvas.initialize size
            |> Canvas.draw (fillBlue size)


fillBlue : Size -> DrawOp
fillBlue size =
    [ FillStyle Color.blue
    , FillRect (Point 0 0) size
    ]
        |> Canvas.batch
