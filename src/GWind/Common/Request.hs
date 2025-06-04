{-# LANGUAGE DeriveGeneric #-}
module GWind.Common.Request (emptyValue, emptyObject)
where

    import Data.Aeson (ToJSON, Value, object)
    import GHC.Generics (Generic)

    data Empty = Empty {} deriving (Eq, Show, Read, Generic)

    instance ToJSON Empty

    emptyValue :: Empty
    emptyValue = Empty

    emptyObject :: Value
    emptyObject = object []

--
