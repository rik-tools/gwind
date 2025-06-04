{-# LANGUAGE DeriveGeneric #-}
module GWind.ServiceAccount.Response (
    ServiceAccount (ServiceAccount), displayName, email, etag, name, oauth2ClientId, projectId, uniqueId,
    ServiceAccounts (ServiceAccounts), accounts)
where

    import Data.Aeson (FromJSON, ToJSON)
    import GHC.Generics (Generic)

    data ServiceAccount = ServiceAccount {
        displayName :: String,
        email :: String,
        etag :: String,
        name :: String,
        oauth2ClientId :: String,
        projectId :: String,
        uniqueId :: String}
        deriving (Eq, Show, Read, Generic)

    data ServiceAccounts = ServiceAccounts {
        accounts :: [ServiceAccount]}
        deriving (Eq, Show, Read, Generic)

    instance ToJSON ServiceAccount
    instance ToJSON ServiceAccounts
    instance FromJSON ServiceAccount
    instance FromJSON ServiceAccounts

--
