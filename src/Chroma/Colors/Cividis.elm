module Chroma.Colors.Cividis exposing (getColor)

import Color exposing (Color, rgb255)


getColor : Float -> Color
getColor t =
    let
        boundedT =
            clamp 0 1 t

        r =
            max 0 (min 255 (round (-4.54 - t * (35.34 - t * (2381.73 - t * (6402.7 - t * (7024.72 - t * 2710.57)))))))

        g =
            max 0 (min 255 (round (32.49 + t * (170.73 + t * (52.82 - t * (131.46 - t * (176.58 - t * 67.37)))))))

        b =
            max 0 (min 255 (round (81.24 + t * (442.36 - t * (2482.43 - t * (6167.24 - t * (6614.94 - t * 2475.67)))))))
    in
    rgb255 r g b
