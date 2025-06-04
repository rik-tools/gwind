--
module GWind.ServiceAccountKey.Adapter (revimentServiceAccountKeysM, creamentBodyM, delementCodeM)
where

    import Data.Aeson (decode)
    import GWind.Common.Domain (Code, Body)
    import GWind.Common.Transport (InComer, body, code)
    import GWind.ServiceAccountKey.Response (ServiceAccountKey, ServiceAccountKeys, keys)

--
    revimentServiceAccountKeysM :: InComer -> IO [ServiceAccountKey]
    revimentServiceAccountKeysM inComer =
        case code inComer of
            200 -> case decode (body inComer) :: Maybe ServiceAccountKeys of
                Just it -> return (keys it)
                Nothing -> return []
            _ -> error ("failed to revise service account keys, inComer: " ++ show inComer)

--
    creamentBodyM :: InComer -> IO Body
    creamentBodyM inComer =
        case code inComer of
            200 -> return (body inComer)
            _   -> error ("failed to create service account key, inComer: " ++ show inComer)

--
    delementCodeM :: InComer -> IO Code
    delementCodeM inComer =
        case code inComer of
            200 -> return (code inComer)
            _   -> error ("failed to delete service account key, inComer: " ++ show inComer)

--
