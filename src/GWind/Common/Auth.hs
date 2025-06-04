--
module GWind.Common.Auth (tokenM)
where

    import System.Exiter (exit)
    import System.Exit (ExitCode (ExitSuccess))
    import System.Process (readProcessWithExitCode)

    command :: String
    command = "gcloud"

    arguments :: [String]
    arguments = ["auth", "print-access-token"]

    input :: String
    input = "stdin"

    tokenM :: IO String
    tokenM =
        readProcessWithExitCode command arguments input
        >>= tokenM'

    tokenM' :: (ExitCode, String, String) -> IO String
    tokenM' responseTrip =
        case responseTrip of
            (ExitSuccess, outString, "") -> return $ init outString
            (_, _, errorString)          -> exit 36 ("cannot invoke GCloud: " ++ errorString)

--
-- falls over when GCloud is not on the path
--
