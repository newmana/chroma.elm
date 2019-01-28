module Chroma.Converter.Out.ToCmyk exposing (toCmyk)

{-| Convert ExtColor to CMYK


# Definition

@docs toCmyk

-}

import Chroma.Converter.In.Lab2Rgb as Lab2Rgb
import Chroma.Types as Types
import Color as Color
import Flip as Flip


{-| TBD
-}
toCmyk : Types.ExtColor -> Types.CymkColor
toCmyk color =
    let
        convert { alpha, blue, green, red } =
            let
                f x =
                    if k < 1 then
                        (1 - x - k) / (1 - k)

                    else
                        0

                k =
                    max green blue |> max red |> (-) 1
            in
            { cyan = f red, magenta = f green, yellow = f blue, black = k }
    in
    case color of
        Types.RGBColor c ->
            Color.toRgba c |> convert

        Types.CMYKColor cmyk ->
            cmyk

        Types.LABColor lab ->
            Lab2Rgb.lab2rgb lab |> Color.toRgba |> convert