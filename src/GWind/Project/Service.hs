--
module GWind.Project.Service (revisionProjectsM, creationCodeM, deletionCodeM, undeletionCodeM)
where

    import GWind.Common.Domain (Code)
    import GWind.Project.Domain (ProjectId, ProjectName)
    import GWind.Project.Response (Project)
    import GWind.Project.Constructor (revisionOutGoerM, creationOutGoerM, deletionOutGoerM, undeletionOutGoerM)
    import GWind.Project.Adapter (revimentProjectsM, creamentCodeM, delementCodeM, undelementCodeM)
    import GWind.Common.HTTP (gettingM, deletingM, postingM)

--
    revisionProjectsM :: IO [Project]
    revisionProjectsM  =
        revisionOutGoerM
        >>= gettingM
        >>= revimentProjectsM

--
    creationCodeM :: ProjectId -> ProjectName -> IO Code
    creationCodeM projectId projectName =
        creationOutGoerM projectId projectName
        >>= postingM
        >>= creamentCodeM

--
    deletionCodeM :: ProjectId -> IO Code
    deletionCodeM projectId =
        deletionOutGoerM projectId
        >>= deletingM
        >>= delementCodeM

--
    undeletionCodeM :: ProjectId -> IO Code
    undeletionCodeM projectId =
        undeletionOutGoerM projectId
        >>= postingM
        >>= undelementCodeM

--
