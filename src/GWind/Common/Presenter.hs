--
module GWind.Common.Presenter (presentingM)
where

    import Data.Aeson (ToJSON)
    import Data.Aeson.Encode.Pretty (encodePretty)
    import Data.ByteString.Lazy (ByteString)
    import Data.ByteString.Lazy.Char8 (unpack)

--
    presentingM :: ToJSON preJSON => preJSON -> IO ()
    presentingM preJSON = (putStrLn . prettyString . prettyByte) preJSON

    prettyByte :: ToJSON preJSON => preJSON -> ByteString
    prettyByte preJSON = encodePretty preJSON

    prettyString :: ByteString -> String
    prettyString prettyByte = unpack prettyByte

--
