--
module GWind.Common.Preserver (preservingM, postervingM)
where

    import Data.ByteString.Lazy (ByteString)
    import Data.ByteString.Lazy.Char8 (unpack)
    import GWind.Common.Domain (Code)
    import System.Environment (getEnv)
    import System.Filer (recreateFile, deleteFile)

--
    preservingM :: FilePath -> FilePath -> ByteString -> IO Code
    preservingM pid sid content =
        fileNameM pid sid
        >>= \fileName -> recreateFile fileName (unpack content)
        >> return 200

--
    postervingM :: FilePath -> FilePath -> IO ()
    postervingM pid sid =
        fileNameM pid sid
        >>= deleteFile

--
    fileNameM :: FilePath -> FilePath -> IO FilePath
    fileNameM pid sid = getEnv "HOME" >>= (return . fileName pid sid)

    fileName :: FilePath -> FilePath -> FilePath -> FilePath
    fileName pid sid home = home ++ "/.gwind/" ++ pid ++ "/" ++ sid ++ ".json"

--
