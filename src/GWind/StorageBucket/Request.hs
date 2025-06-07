{-# LANGUAGE DeriveGeneric #-}
module GWind.StorageBucket.Request (
    StorageBucketQ (StorageBucketQ), name, location,
    storageBucketQ)
where

    import Data.Aeson (ToJSON)
    import GHC.Generics (Generic)
    import GWind.StorageBucket.Domain (StorageBucketId)

    data StorageBucketQ = StorageBucketQ {
        name :: String,
        location :: String}
        deriving (Eq, Show, Read, Generic)

    instance ToJSON StorageBucketQ

--
    storageBucketQ :: StorageBucketId -> StorageBucketQ
    storageBucketQ storageBucketId =
        StorageBucketQ {
            location = "EU",
            name = storageBucketId}

--
