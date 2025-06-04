--
module GWind.ServiceAccount.Adapter (revimentServiceAccountsM, creamentCodeM, delementCodeM)
where

    import Data.Aeson (decode)
    import GWind.Common.Domain (Code)
    import GWind.Common.Transport (InComer, body, code)
    import GWind.ServiceAccount.Response (ServiceAccount, ServiceAccounts, accounts)


--
    revimentServiceAccountsM :: InComer -> IO [ServiceAccount]
    revimentServiceAccountsM inComer =
        case code inComer of
            200 -> case decode (body inComer) :: Maybe ServiceAccounts of
                Just it -> return (accounts it)
                Nothing -> return []
            _ -> error ("failed to revise service accounts, inComer: " ++ show inComer)

--
    creamentCodeM :: InComer -> IO Code
    creamentCodeM inComer =
        case code inComer of
            200 -> return (code inComer)
            _   -> error ("failed to create service account, inComer: " ++ show inComer)

--
    delementCodeM :: InComer -> IO Code
    delementCodeM inComer =
        case code inComer of
            200 -> return (code inComer)
            _   -> error ("failed to delete service account, inComer: " ++ show inComer)

--
