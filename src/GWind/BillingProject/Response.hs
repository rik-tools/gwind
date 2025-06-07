{-# LANGUAGE DeriveGeneric #-}
module GWind.BillingProject.Response (
    BillingProject (BillingProject), billingAccountName, billingEnabled, name, projectId,
    BillingProjects (BillingProjects), projectBillingInfo)
where

    import Data.Aeson (FromJSON, ToJSON)
    import GHC.Generics (Generic)

    data BillingProject = BillingProject {
        billingAccountName :: String,
        billingEnabled :: Bool,
        name :: String,
        projectId :: String}
        deriving (Eq, Show, Read, Generic)

    data BillingProjects = BillingProjects {
        projectBillingInfo :: [BillingProject]}
        deriving (Eq, Show, Read, Generic)

    instance ToJSON BillingProject
    instance ToJSON BillingProjects
    instance FromJSON BillingProject
    instance FromJSON BillingProjects

--
