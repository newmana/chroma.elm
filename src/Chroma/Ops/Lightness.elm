module Chroma.Ops.Lightness exposing (darken, brighten)

{-| Change the lightness of a color value.


# Definition

@docs darken, brighten

-}

import Chroma.Converter.In.Lab2Lch as Lab2Lch
import Chroma.Converter.In.Lab2Rgb as Lab2Rgb
import Chroma.Converter.Misc.LabConstants as LabConstants
import Chroma.Converter.Out.ToCmyk as OutCymk
import Chroma.Converter.Out.ToLab as OutLab
import Chroma.Types as Types


{-| Darken
-}
darken : Float -> Types.ExtColor -> Types.ExtColor
darken amount color =
    let
        { lightness, labA, labB } =
            OutLab.toLab color

        newL =
            lightness - LabConstants.kn * amount

        newLab =
            { lightness = newL, labA = labA, labB = labB } |> Types.LABColor
    in
    case color of
        Types.RGBColor _ ->
            Lab2Rgb.lab2rgb { lightness = newL, labA = labA, labB = labB } |> Types.RGBColor

        Types.LABColor _ ->
            newLab

        Types.LCHColor _ ->
            Lab2Lch.lab2lch { lightness = newL, labA = labA, labB = labB } |> Types.LCHColor

        Types.CMYKColor _ ->
            newLab |> OutCymk.toCmyk |> Types.CMYKColor


{-| -}
brighten : Float -> Types.ExtColor -> Types.ExtColor
brighten amount color =
    darken (amount * -1) color
