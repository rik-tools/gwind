{-# LANGUAGE DeriveGeneric #-}
module GWind.Service.Request2 (Services2 (Services2), services2)
where

    import Data.Aeson (ToJSON)
    import GHC.Generics (Generic)

    data Services2 = Services2 {
        disableDependentServices :: Bool}
        deriving (Eq, Show, Read, Generic)

    instance ToJSON Services2

--
    services2 :: Services2
    services2 =
        Services2 {disableDependentServices = True}

--
