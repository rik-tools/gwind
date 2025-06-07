--
module GWind.BillingAccount.Adapter (revimentBillingAccountsM)
where

    import Data.Aeson (decode)
    import GWind.Common.Transport (InComer, body, code)
    import GWind.BillingAccount.Response (BillingAccount, BillingAccounts, billingAccounts)

--
    revimentBillingAccountsM :: InComer -> IO [BillingAccount]
    revimentBillingAccountsM inComer =
        case code inComer of
            200 -> case decode (body inComer) :: Maybe BillingAccounts of
                Just it -> return (billingAccounts it)
                Nothing -> return []
            _ -> error ("failed to revise billing accounts, inComer: " ++ show inComer)

--
