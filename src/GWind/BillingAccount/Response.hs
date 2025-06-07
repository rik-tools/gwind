{-# LANGUAGE DeriveGeneric #-}
module GWind.BillingAccount.Response (
    BillingAccount (BillingAccount), currencyCode, displayName, masterBillingAccount, name, open, parent,
    BillingAccounts (BillingAccounts), billingAccounts)
where

    import Data.Aeson (FromJSON, ToJSON)
    import GHC.Generics (Generic)

    data BillingAccount = BillingAccount {
        currencyCode :: String,
        displayName :: String,
        masterBillingAccount :: String,
        name :: String,
        open :: Bool,
        parent :: String}
        deriving (Eq, Show, Read, Generic)

    data BillingAccounts = BillingAccounts {
        billingAccounts :: [BillingAccount]}
        deriving (Eq, Show, Read, Generic)

    instance ToJSON BillingAccount
    instance ToJSON BillingAccounts
    instance FromJSON BillingAccount
    instance FromJSON BillingAccounts

--
