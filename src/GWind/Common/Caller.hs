--
module GWind.Common.Caller (rawGettingM, rawDeletionM, rawPostingM, rawPuttingM)
where

    import Control.Lens ((^.))
    import Data.Aeson (Value)
    import Data.ByteString.Lazy (ByteString)
    import Network.HTTP.Types (Status, statusCode)
    import Network.Wreq (Options, Response, deleteWith, getWith, postWith, putWith, responseBody, responseStatus)

--
    rawGettingM :: String -> Options -> IO (Int, ByteString)
    rawGettingM url options =
        getWith options url >>= splittingM >>= refiningM

--
    rawDeletionM :: String -> Options -> IO (Int, ByteString)
    rawDeletionM url options =
        deleteWith options url >>= splittingM >>= refiningM

--
    rawPostingM :: Value -> String -> Options -> IO (Int, ByteString)
    rawPostingM value url options =
        postWith options url value >>= splittingM >>= refiningM

--
    rawPuttingM :: Value -> String -> Options -> IO (Int, ByteString)
    rawPuttingM value url options =
        putWith options url value >>= splittingM >>= refiningM

--
    splittingM :: Response ByteString -> IO (Status, ByteString)
    splittingM response =
        return (response ^. responseStatus, response ^. responseBody)

    refiningM :: (Status, ByteString) -> IO (Int, ByteString)
    refiningM (status, byteString) =
        return (statusCode status, byteString)

--
