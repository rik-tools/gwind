--
module GWind.BillingAccount.Constructor (revisionOutGoerM)
where

    import GWind.Common.Request (emptyObject)
    import GWind.Common.Transport (OutGoer, outGoer)

--
    revisionOutGoerM :: IO OutGoer
    revisionOutGoerM  =
        return (
            outGoer
                "https://cloudbilling.googleapis.com/v1/billingAccounts"
                []
                emptyObject)

--
