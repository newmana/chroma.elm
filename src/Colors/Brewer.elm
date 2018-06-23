module Colors.Brewer
    exposing
        ( orRd
        , puBu
        , buPu
        , oranges
        , buGn
        , ylOrBr
        , ylGn
        , reds
        , rdPu
        , greens
        , ylGnBu
        , purples
        , gnBu
        , greys
        , ylOrRd
        , puRd
        , blues
        , puBuGn
        , spectral
        , rdYlGn
        , rdBu
        , piYG
        , pRGn
        , rdYlBu
        , brBG
        , rdGy
        , puOr
        , set2
        , accent
        , set1
        , set3
        , dark2
        , paired
        , pastel2
        , pastel1
        )

import Color exposing (Color, rgb)
import List


-- Sequential


orRd : List Color
orRd =
    [ rgb 255 247 236, rgb 254 232 200, rgb 253 212 158, rgb 253 187 132, rgb 252 141 89, rgb 239 101 72, rgb 215 48 31, rgb 179 0 0, rgb 127 0 0 ]


puBu : List Color
puBu =
    [ rgb 255 247 251, rgb 236 231 242, rgb 208 209 230, rgb 166 189 219, rgb 116 169 207, rgb 54 144 192, rgb 5 112 176, rgb 4 90 141, rgb 2 56 88 ]


buPu : List Color
buPu =
    [ rgb 247 252 253, rgb 224 236 244, rgb 191 211 230, rgb 158 188 218, rgb 140 150 198, rgb 140 107 177, rgb 136 65 157, rgb 129 15 124, rgb 77 0 75 ]


oranges : List Color
oranges =
    [ rgb 255 245 235, rgb 254 230 206, rgb 253 208 162, rgb 253 174 107, rgb 253 141 60, rgb 241 105 19, rgb 217 72 1, rgb 166 54 3, rgb 127 39 4 ]


buGn : List Color
buGn =
    [ rgb 247 252 253, rgb 229 245 249, rgb 204 236 230, rgb 153 216 201, rgb 102 194 164, rgb 65 174 118, rgb 35 139 69, rgb 0 109 44, rgb 0 68 27 ]


ylOrBr : List Color
ylOrBr =
    [ rgb 255 255 229, rgb 255 247 188, rgb 254 227 145, rgb 254 196 79, rgb 254 153 41, rgb 236 112 20, rgb 204 76 2, rgb 153 52 4, rgb 102 37 6 ]


ylGn : List Color
ylGn =
    [ rgb 255 255 229, rgb 247 252 185, rgb 217 240 163, rgb 173 221 142, rgb 120 198 121, rgb 65 171 93, rgb 35 132 67, rgb 0 104 55, rgb 0 69 41 ]


reds : List Color
reds =
    [ rgb 255 245 240, rgb 254 224 210, rgb 252 187 161, rgb 252 146 114, rgb 251 106 74, rgb 239 59 44, rgb 203 24 29, rgb 165 15 21, rgb 103 0 13 ]


rdPu : List Color
rdPu =
    [ rgb 255 247 243, rgb 253 224 221, rgb 252 197 192, rgb 250 159 181, rgb 247 104 161, rgb 221 52 151, rgb 174 1 126, rgb 122 1 119, rgb 73 0 106 ]


greens : List Color
greens =
    [ rgb 247 252 245, rgb 229 245 224, rgb 199 233 192, rgb 161 217 155, rgb 116 196 118, rgb 65 171 93, rgb 35 139 69, rgb 0 109 44, rgb 0 68 27 ]


ylGnBu : List Color
ylGnBu =
    [ rgb 255 255 217, rgb 237 248 177, rgb 199 233 180, rgb 127 205 187, rgb 65 182 196, rgb 29 145 192, rgb 34 94 168, rgb 37 52 148, rgb 8 29 88 ]


purples : List Color
purples =
    [ rgb 252 251 253, rgb 239 237 245, rgb 218 218 235, rgb 188 189 220, rgb 158 154 200, rgb 128 125 186, rgb 106 81 163, rgb 84 39 143, rgb 63 0 125 ]


gnBu : List Color
gnBu =
    [ rgb 247 252 240, rgb 224 243 219, rgb 204 235 197, rgb 168 221 181, rgb 123 204 196, rgb 78 179 211, rgb 43 140 190, rgb 8 104 172, rgb 8 64 129 ]


greys : List Color
greys =
    [ rgb 255 255 255, rgb 240 240 240, rgb 217 217 217, rgb 189 189 189, rgb 150 150 150, rgb 115 115 115, rgb 82 82 82, rgb 37 37 37, rgb 0 0 0 ]


ylOrRd : List Color
ylOrRd =
    [ rgb 255 255 204, rgb 255 237 160, rgb 254 217 118, rgb 254 178 76, rgb 253 141 60, rgb 252 78 42, rgb 227 26 28, rgb 189 0 38, rgb 128 0 38 ]


puRd : List Color
puRd =
    [ rgb 247 244 249, rgb 231 225 239, rgb 212 185 218, rgb 201 148 199, rgb 223 101 176, rgb 231 41 138, rgb 206 18 86, rgb 152 0 67, rgb 103 0 31 ]


blues : List Color
blues =
    [ rgb 247 251 255, rgb 222 235 247, rgb 198 219 239, rgb 158 202 225, rgb 107 174 214, rgb 66 146 198, rgb 33 113 181, rgb 8 81 156, rgb 8 48 107 ]


puBuGn : List Color
puBuGn =
    [ rgb 255 247 251, rgb 236 226 240, rgb 208 209 230, rgb 166 189 219, rgb 103 169 207, rgb 54 144 192, rgb 2 129 138, rgb 1 108 89, rgb 1 70 54 ]



-- Diverging


spectral : List Color
spectral =
    [ rgb 213 62 79, rgb 244 109 67, rgb 253 174 97, rgb 254 224 139, rgb 255 255 191, rgb 230 245 152, rgb 171 221 164, rgb 102 194 165, rgb 50 136 189 ]


rdYlGn : List Color
rdYlGn =
    [ rgb 215 48 39, rgb 244 109 67, rgb 253 174 97, rgb 254 224 139, rgb 255 255 191, rgb 217 239 139, rgb 166 217 106, rgb 102 189 99, rgb 26 152 80 ]


rdBu : List Color
rdBu =
    [ rgb 178 24 43, rgb 214 96 77, rgb 244 165 130, rgb 253 219 199, rgb 247 247 247, rgb 209 229 240, rgb 146 197 222, rgb 67 147 195, rgb 33 102 172 ]


piYG : List Color
piYG =
    [ rgb 197 27 125, rgb 222 119 174, rgb 241 182 218, rgb 253 224 239, rgb 247 247 247, rgb 230 245 208, rgb 184 225 134, rgb 127 188 65, rgb 77 146 33 ]


pRGn : List Color
pRGn =
    [ rgb 118 42 131, rgb 153 112 171, rgb 194 165 207, rgb 231 212 232, rgb 247 247 247, rgb 217 240 211, rgb 166 219 160, rgb 90 174 97, rgb 27 120 55 ]


rdYlBu : List Color
rdYlBu =
    [ rgb 215 48 39, rgb 244 109 67, rgb 253 174 97, rgb 254 224 144, rgb 255 255 191, rgb 224 243 248, rgb 171 217 233, rgb 116 173 209, rgb 69 117 180 ]


brBG : List Color
brBG =
    [ rgb 140 81 10, rgb 191 129 45, rgb 223 194 125, rgb 246 232 195, rgb 245 245 245, rgb 199 234 229, rgb 128 205 193, rgb 53 151 143, rgb 1 102 94 ]


rdGy : List Color
rdGy =
    [ rgb 178 24 43, rgb 214 96 77, rgb 244 165 130, rgb 253 219 199, rgb 255 255 255, rgb 224 224 224, rgb 186 186 186, rgb 135 135 135, rgb 77 77 77 ]


puOr : List Color
puOr =
    [ rgb 179 88 6, rgb 224 130 20, rgb 253 184 99, rgb 254 224 182, rgb 247 247 247, rgb 216 218 235, rgb 178 171 210, rgb 128 115 172, rgb 84 39 136 ]



-- Qualitative


set2 : List Color
set2 =
    [ rgb 102 194 165, rgb 252 141 98, rgb 141 160 203, rgb 231 138 195, rgb 166 216 84, rgb 255 217 47, rgb 229 196 148, rgb 179 179 179 ]


accent : List Color
accent =
    [ rgb 127 201 127, rgb 190 174 212, rgb 253 192 134, rgb 255 255 153, rgb 56 108 176, rgb 240 2 127, rgb 191 91 23, rgb 102 102 102 ]


set1 : List Color
set1 =
    [ rgb 228 26 28, rgb 55 126 184, rgb 77 175 74, rgb 152 78 163, rgb 255 127 0, rgb 255 255 51, rgb 166 86 40, rgb 247 129 191, rgb 153 153 153 ]


set3 : List Color
set3 =
    [ rgb 141 211 199, rgb 255 255 179, rgb 190 186 218, rgb 251 128 114, rgb 128 177 211, rgb 253 180 98, rgb 179 222 105, rgb 252 205 229, rgb 217 217 217, rgb 188 128 189, rgb 204 235 197, rgb 255 237 111 ]


dark2 : List Color
dark2 =
    [ rgb 27 158 119, rgb 217 95 2, rgb 117 112 179, rgb 231 41 138, rgb 102 166 30, rgb 230 171 2, rgb 166 118 29, rgb 102 102 102 ]


paired : List Color
paired =
    [ rgb 166 206 227, rgb 31 120 180, rgb 178 223 138, rgb 51 160 44, rgb 251 154 153, rgb 227 26 28, rgb 253 191 111, rgb 255 127 0, rgb 202 178 214, rgb 106 61 154, rgb 255 255 153, rgb 177 89 40 ]


pastel2 : List Color
pastel2 =
    [ rgb 179 226 205, rgb 253 205 172, rgb 203 213 232, rgb 244 202 228, rgb 230 245 201, rgb 255 242 174, rgb 241 226 204, rgb 204 204 204 ]


pastel1 : List Color
pastel1 =
    [ rgb 251 180 174, rgb 179 205 227, rgb 204 235 197, rgb 222 203 228, rgb 254 217 166, rgb 255 255 204, rgb 229 216 189, rgb 253 218 236, rgb 242 242 242 ]
