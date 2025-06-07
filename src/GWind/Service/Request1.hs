{-# LANGUAGE DeriveGeneric #-}
module GWind.Service.Request1 (Services1 (Services1), services1)
where

    import Data.Aeson (ToJSON)
    import GHC.Generics (Generic)
    import GWind.Service.Domain (ServiceId)

    data Services1 = Services1 {
        serviceIds :: [String]}
        deriving (Eq, Show, Read, Generic)

    instance ToJSON Services1

--
    services1 :: [ServiceId] -> Services1
    services1 serviceIds =
        Services1 {serviceIds = serviceIds}

--
