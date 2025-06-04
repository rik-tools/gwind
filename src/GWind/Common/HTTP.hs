--
module GWind.Common.HTTP (gettingM, deletingM, postingM, puttingM)
where

    import GWind.Common.Transport (InComer, OutGoer, params, url, value)
    import GWind.Common.Auth (tokenM)
    import GWind.Common.Opter (optionsM)
    import GWind.Common.Caller (rawGettingM, rawDeletionM, rawPostingM, rawPuttingM)
    import GWind.Common.Transport (inComer)
    --import Debug.Trace (trace)

--
    gettingM :: OutGoer -> IO InComer
    gettingM outGoer =
        tokenM
        -- >>= \tkn -> trace (show outGoer) (return tkn)
        >>= optionsM (params outGoer)
        >>= rawGettingM (url outGoer)
        >>= return . inComer
        -- >>= \inc -> trace (show inc) (return inc)

--
    deletingM :: OutGoer -> IO InComer
    deletingM outGoer =
        tokenM
        >>= optionsM (params outGoer)
        >>= rawDeletionM (url outGoer)
        >>= return . inComer

--
    postingM :: OutGoer -> IO InComer
    postingM outGoer =
        tokenM
        >>= optionsM (params outGoer)
        >>= rawPostingM (value outGoer) (url outGoer)
        >>= return . inComer

--
    puttingM :: OutGoer -> IO InComer
    puttingM outGoer =
        tokenM
        >>= optionsM (params outGoer)
        >>= rawPuttingM (value outGoer) (url outGoer)
        >>= return . inComer

--
