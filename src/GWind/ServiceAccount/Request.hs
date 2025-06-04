{-# LANGUAGE DeriveGeneric #-}
module GWind.ServiceAccount.Request (serviceAccountQ)
where

    import Data.Aeson (ToJSON)
    import GHC.Generics (Generic)
    import GWind.ServiceAccount.Domain (ServiceAccountId, ServiceAccountDisplayName)

    data ServiceAccountQ = ServiceAccountQ {accountId :: String, serviceAccount :: DisplayName} deriving (Eq, Show, Read, Generic)
    data DisplayName = DisplayName {displayName :: String} deriving (Eq, Show, Read, Generic)

    instance ToJSON ServiceAccountQ
    instance ToJSON DisplayName

--
    serviceAccountQ :: ServiceAccountId -> ServiceAccountDisplayName -> ServiceAccountQ
    serviceAccountQ serviceAccountId serviceAccountDisplayName =
        ServiceAccountQ {
            accountId = serviceAccountId,
            serviceAccount = DisplayName {
                displayName = serviceAccountDisplayName}}

--
