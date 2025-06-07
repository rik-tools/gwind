--
module GWind.Service.Adapter (revimentServicesM, creamentCodeM, delementCodeM)
where

    import Data.Aeson (decode)
    import GWind.Common.Domain (Code)
    import GWind.Common.Transport (InComer, body, code)
    import GWind.Service.Response (Service, Services, services)

--
    revimentServicesM :: InComer -> IO [Service]
    revimentServicesM inComer =
        case code inComer of
            200 -> case decode (body inComer) :: Maybe Services of
                Just it -> return (services it)
                Nothing -> return []
            _ -> error ("failed to revise services, inComer: " ++ show inComer)

--
    creamentCodeM :: InComer -> IO Code
    creamentCodeM inComer =
        case code inComer of
            200 -> (return (code inComer))
            _   -> error ("failed to create services, inComer: " ++ show inComer)

--
    delementCodeM :: InComer -> IO Code
    delementCodeM inComer =
        case code inComer of
            200 -> return (code inComer)
            _   -> error ("failed to delete services, inComer: " ++ show inComer)

--
