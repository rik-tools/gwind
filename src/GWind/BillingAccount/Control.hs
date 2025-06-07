--
module GWind.BillingAccount.Control (reviseBillingAccountsM)
where

    import GWind.BillingAccount.Service (revisionBillingAccountsM)
    import GWind.Common.Presenter (presentingM)

--
    reviseBillingAccountsM :: IO ()
    reviseBillingAccountsM  =
        revisionBillingAccountsM
        >>= presentingM

--
