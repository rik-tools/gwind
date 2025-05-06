{-# LANGUAGE QuasiQuotes #-}
module Strings (how, version, completion)
where

    import Data.Text (unpack)
    import NeatInterpolation (text)

--
    how :: String
    how = unpack [text|
        ---
        -- $ gwind --how
        -- $ gwind --version
        -- $ source <(gwind --completion)
        ---
    |]

--
    version :: String
    version = unpack [text|
        0.0.0
    |]

--
    completion :: String
    completion = unpack [text|
        #!/bin/bash
        WORDS='--how --version --completion'
        complete -W "@WORDS" gwind  # -d -f
    |]

--
