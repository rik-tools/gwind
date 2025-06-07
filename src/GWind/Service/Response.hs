{-# LANGUAGE DeriveGeneric #-}
module GWind.Service.Response (
    Service (Service), name, parent, state,
    Services (Services), services)
where

    import Data.Aeson (FromJSON, ToJSON)
    import GHC.Generics (Generic)

    data Service = Service {
        name :: String,
        parent :: String,
        state :: String}
        deriving (Eq, Show, Read, Generic)

    data Services = Services {
        services :: [Service]}
        deriving (Eq, Show, Read, Generic)

    instance ToJSON Service
    instance ToJSON Services
    instance FromJSON Service
    instance FromJSON Services

--
