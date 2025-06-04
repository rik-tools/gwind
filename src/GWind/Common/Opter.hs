--
module GWind.Common.Opter (optionsM)
where

    import Control.Lens ((.~), (&))
    import Data.ByteString (ByteString)
    import Data.ByteString.Char8 (pack)
    import Data.Text (Text)
    import Network.Wreq (Auth, Options, auth, defaults, oauth2Bearer, param)

    optionsM :: [(Text, [Text])] -> String -> IO Options
    optionsM paramKGs authString = (pure . final paramKGs . initial . optionsMutator . justAuth . authToken . byteToken) authString

    byteToken :: String -> ByteString
    byteToken authString = pack authString

    authToken :: ByteString -> Auth
    authToken authByte = oauth2Bearer authByte

    justAuth :: Auth -> Maybe Auth
    justAuth auth = Just auth

    optionsMutator :: Maybe Auth -> (Options -> Options)
    optionsMutator justAuth = (.~) auth justAuth

    initial :: (Options -> Options) -> Options
    initial optionsMutator = optionsMutator defaults

    final :: [(Text, [Text])] -> Options -> Options
    final [] options = options
    final ((k, gs): kgs) options =
        let qo = queryOptions k gs options
        in final kgs qo

    queryOptions :: Text -> [Text] -> Options -> Options
    queryOptions k gs os = (&) os ((.~) (param k) gs)

--
