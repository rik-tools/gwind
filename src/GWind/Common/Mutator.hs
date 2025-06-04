--
module GWind.Common.Mutator (kebab, donut)
where

    import Data.Char (toLower)
    import GWind.Common.Domain (Snake, Kebab, Donut)

--
    donut :: Snake -> Donut
    donut snake =
        map spacer snake

    spacer :: Char -> Char
    spacer char =
        if char == '_'
            then ' '
            else char

--
    kebab :: Snake -> Kebab
    kebab snake =
        map (hyphenated . toLower) snake

    hyphenated :: Char -> Char
    hyphenated char =
        if elem char [' ', '_']
            then '-'
            else char

--
