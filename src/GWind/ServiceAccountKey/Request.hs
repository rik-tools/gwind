{-# LANGUAGE DeriveGeneric #-}
module GWind.ServiceAccountKey.Request (
    ServiceAccountKeyQ (ServiceAccountKeyQ), keyAlgorithm, privateKeyType,
    serviceAccountKeyQ)
where

    import Data.Aeson (ToJSON)
    import GHC.Generics (Generic)

    data ServiceAccountKeyQ = ServiceAccountKeyQ {
        keyAlgorithm :: String,
        privateKeyType :: String}
        deriving (Eq, Show, Read, Generic)

    instance ToJSON ServiceAccountKeyQ

--
    serviceAccountKeyQ :: ServiceAccountKeyQ
    serviceAccountKeyQ  =
        ServiceAccountKeyQ {
            keyAlgorithm = "KEY_ALG_RSA_2048",
            privateKeyType = "TYPE_GOOGLE_CREDENTIALS_FILE"}

--
