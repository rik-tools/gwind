--
module GWind.BillingAccount.Service (revisionBillingAccountsM)
where

    import GWind.BillingAccount.Response (BillingAccount)
    import GWind.BillingAccount.Constructor (revisionOutGoerM)
    import GWind.BillingAccount.Adapter (revimentBillingAccountsM)
    import GWind.Common.HTTP (gettingM)

--
    revisionBillingAccountsM :: IO [BillingAccount]
    revisionBillingAccountsM  =
        revisionOutGoerM
        >>= gettingM
        >>= revimentBillingAccountsM

--
