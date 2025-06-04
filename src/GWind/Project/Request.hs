{-# LANGUAGE DeriveGeneric #-}
module GWind.Project.Request (projectQ)
where

    import Data.Aeson (ToJSON)
    import GHC.Generics (Generic)
    import GWind.Project.Domain (ProjectId, ProjectName)

    data ProjectQ = ProjectQ {
        projectId :: String,
        name :: String}
        deriving (Eq, Show, Read, Generic)

    instance ToJSON ProjectQ

--
    projectQ :: ProjectId -> ProjectName -> ProjectQ
    projectQ projectId projectName =
        ProjectQ {projectId = projectId, name = projectName}

--
