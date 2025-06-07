{-# LANGUAGE DeriveGeneric #-}
module GWind.BillingProject.Request (BillingProjectQ (BillingProjectQ), billingProjectQ)
where

    import Data.Aeson (ToJSON)
    import GHC.Generics (Generic)
    import GWind.BillingProject.Domain (BillingAccountName)

    data BillingProjectQ = BillingProjectQ {
        billingAccountName :: String}
        deriving (Eq, Show, Read, Generic)

    instance ToJSON BillingProjectQ

--
    billingProjectQ :: BillingAccountName -> BillingProjectQ
    billingProjectQ billingAccountName =
        BillingProjectQ {billingAccountName = billingAccountName}

--
