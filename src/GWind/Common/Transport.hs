--
module GWind.Common.Transport (
    InComer (InComer), body, code,
    OutGoer (OutGoer), params, url, value,
    inComer, outGoer)
where

    import Data.Aeson (ToJSON, Value, toJSON)
    import Data.ByteString.Lazy (ByteString)
    import GWind.Common.Domain (Body, Code, Param, URL)

    data InComer = InComer {
        code :: Code,
        body :: Body}
        deriving (Eq, Show, Read)

    data OutGoer = OutGoer {
        url :: URL,
        params :: [Param],
        value :: Value}
        deriving (Eq, Show, Read)

--
    inComer :: (Int, ByteString) -> InComer
    inComer (code, body) = InComer {
        code = code,
        body = body}

--
    outGoer :: ToJSON preJSON => URL -> [Param] -> preJSON -> OutGoer
    outGoer url params preJSON = OutGoer {
        url = url,
        params = params,
        value = toJSON (preJSON)}

--
