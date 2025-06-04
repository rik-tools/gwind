-- ⚠
module GWind.Common.Domain (Snake, Kebab, Donut, URL, Code, Body, Param)
where

    import Data.ByteString.Lazy (ByteString)
    import Data.Text (Text)

    type Snake = String
    type Kebab = String
    type Donut = String
    type URL = String
    type Code = Int
    type Body = ByteString
    type Param = (Text, [Text])

--
