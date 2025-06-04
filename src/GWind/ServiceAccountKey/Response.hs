{-# LANGUAGE DeriveGeneric #-}
module GWind.ServiceAccountKey.Response (
    ServiceAccountKey (ServiceAccountKey), keyAlgorithm, keyOrigin, keyType, name, validAfterTime, validBeforeTime,
    ServiceAccountKeys (ServiceAccountKeys), keys)
where

    import Data.Aeson (FromJSON, ToJSON)
    import GHC.Generics (Generic)

    data ServiceAccountKey = ServiceAccountKey {
        keyAlgorithm :: String,
        keyOrigin :: String,
        keyType :: String,
        name :: String,
        validAfterTime :: String,
        validBeforeTime :: String}
        deriving (Eq, Show, Read, Generic)

    data ServiceAccountKeys = ServiceAccountKeys {
        keys :: [ServiceAccountKey]}
        deriving (Eq, Show, Read, Generic)

    instance ToJSON ServiceAccountKey
    instance ToJSON ServiceAccountKeys
    instance FromJSON ServiceAccountKey
    instance FromJSON ServiceAccountKeys

--
