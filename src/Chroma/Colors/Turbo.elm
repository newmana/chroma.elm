module Chroma.Colors.Turbo exposing (getColor)

import Color exposing (Color, rgb255)


getColor : Float -> Color
getColor t =
    let
        boundedT =
            clamp 0 1 t

        r =
            max 0 (min 255 (round (34.61 + t * (1172.33 - t * (10793.56 - t * (33300.12 - t * (38394.49 - t * 14825.05)))))))

        g =
            max 0 (min 255 (round (23.31 + t * (557.33 + t * (1225.33 - t * (3574.96 - t * (1073.77 + t * 707.56)))))))

        b =
            max 0 (min 255 (round (27.2 + t * (3211.1 - t * (15327.97 - t * (27814 - t * (22569.18 - t * 6838.66)))))))
    in
    rgb255 r g b
