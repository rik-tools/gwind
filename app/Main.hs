---
-- $ gwind --how
-- $ gwind --version
-- $ source <(gwind --completion)
---
module Main (main)
where

    import System.Environment (getArgs)
    import Strings (how, version, completion)

--
    main :: IO ()
    main = getArgs >>= processing

--
    processing :: [String] -> IO ()
    processing arguments =
        case arguments of
            []                -> undefined
            "--completion": _ -> putStrLn completion
            "--version"   : _ -> putStrLn version
            "--how"       : _ -> putStrLn how
            _                 -> undefined

--
