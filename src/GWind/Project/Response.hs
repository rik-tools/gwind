{-# LANGUAGE DeriveGeneric #-}
module GWind.Project.Response (
    Project (Project), createTime, lifecycleState, name, projectId, projectNumber,
    Projects (Projects), projects)
where

    import Data.Aeson (FromJSON, ToJSON)
    import GHC.Generics (Generic)

    data Project = Project {
        projectNumber :: String,
        projectId :: String,
        lifecycleState :: String,
        name :: String,
        createTime :: String}
        deriving (Eq, Show, Read, Generic)

    data Projects = Projects {
        projects :: [Project]}
        deriving (Eq, Show, Read, Generic)

    instance ToJSON Project
    instance ToJSON Projects
    instance FromJSON Project
    instance FromJSON Projects

--
