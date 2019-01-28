module Chroma.ChromaTest exposing (c1, c2, c3, testDistance, tests)

import Chroma.Chroma as Chroma
import Chroma.Colors.W3CX11 as W3CX11
import Chroma.Converter.In.Hex2Rgb as Hex2Rgb
import Chroma.Converter.Out.ToHex as OutHex
import Chroma.Types as Types
import Expect as Expect
import Result as Result
import Test as Test
import UtilTest as UtilTest


tests : Test.Test
tests =
    Test.describe "Chroma API"
        [ testStringToColor
        , testDistance
        ]


c1 : Result String Types.ExtColor
c1 =
    Hex2Rgb.hex2rgb "#fff" |> Result.map Types.RGBColor


c2 : Result String Types.ExtColor
c2 =
    Hex2Rgb.hex2rgb "#ff0" |> Result.map Types.RGBColor


c3 : Result String Types.ExtColor
c3 =
    Hex2Rgb.hex2rgb "#f0f" |> Result.map Types.RGBColor


testStringToColor : Test.Test
testStringToColor =
    Test.describe "color"
        [ Test.test "Hotpink string" <|
            \_ ->
                "hotpink" |> Chroma.chroma |> Expect.equal (Result.Ok (Types.RGBColor W3CX11.hotpink))
        , Test.test "Hotpink to hex string" <|
            \_ ->
                "hotpink" |> Chroma.chroma |> Result.map OutHex.toHex |> Expect.equal (Result.Ok "#ff69b4")
        , Test.test "A pink hex" <|
            \_ ->
                "#ff3399" |> Chroma.chroma |> Result.map OutHex.toHex |> Expect.equal (Result.Ok "#ff3399")
        , Test.test "A pink three letter hex" <|
            \_ ->
                "f39" |> Chroma.chroma |> Result.map OutHex.toHex |> Expect.equal (Result.Ok "#ff3399")
        ]


testDistance : Test.Test
testDistance =
    Test.describe "distance"
        [ Test.test "Distance 1" <|
            \_ ->
                Result.map2 Chroma.distance c1 c2 |> UtilTest.expectResultWithin 0.001 1
        , Test.test "Distance 2" <|
            \_ ->
                Result.map2 Chroma.distance c1 c3 |> UtilTest.expectResultWithin 0.001 1
        , Test.test "Distance 3" <|
            \_ ->
                Result.map2 Chroma.distance255 c1 c2 |> UtilTest.expectResultWithin 0.001 255
        , Test.test "Distance 4" <|
            \_ ->
                Result.map2 Chroma.distance255 c1 c3 |> UtilTest.expectResultWithin 0.001 255
        , Test.test "Distance 5" <|
            \_ ->
                Result.map2 Chroma.distanceWithLab c1 c2 |> UtilTest.expectResultWithin 0.001 96.948
        , Test.test "Distance 6" <|
            \_ ->
                Result.map2 Chroma.distanceWithLab c1 c3 |> UtilTest.expectResultWithin 0.001 122.163
        ]