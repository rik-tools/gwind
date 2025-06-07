{-# LANGUAGE DeriveGeneric #-}
module GWind.StorageBucket.Response (
    StorageBucket (StorageBucket), {-id,-} name, location, locationType, storageClass,
    StorageBuckets (StorageBuckets), kind, items)
where

    import Data.Aeson (FromJSON, ToJSON)
    import GHC.Generics (Generic)

    data StorageBucket = StorageBucket {
        id :: String,
        name :: String,
        location :: String,
        locationType :: String,
        storageClass :: String}
        deriving (Eq, Show, Read, Generic)

    data StorageBuckets = StorageBuckets {
        kind :: String,
        items :: [StorageBucket]}
        deriving (Eq, Show, Read, Generic)

    instance ToJSON StorageBucket
    instance ToJSON StorageBuckets
    instance FromJSON StorageBucket
    instance FromJSON StorageBuckets

--
