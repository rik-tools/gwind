{-# LANGUAGE DeriveGeneric #-}
module GWind.IAMPolicy.Response (
    Binding (Binding), members, role,
    IAMPolicy (IAMPolicy), bindings, etag, version)
where

    import Data.Aeson (FromJSON, ToJSON)
    import GHC.Generics (Generic)

    data Binding = Binding {
        members :: [String],
        role :: String}
        deriving (Eq, Show, Read, Generic)

    data IAMPolicy = IAMPolicy {
        bindings :: [Binding],
        etag :: String,
        version :: Int}
        deriving (Eq, Show, Read, Generic)

    instance ToJSON Binding
    instance ToJSON IAMPolicy
    instance FromJSON Binding
    instance FromJSON IAMPolicy

--
