--
module GWind.Project.Constructor (revisionOutGoerM, creationOutGoerM, deletionOutGoerM, undeletionOutGoerM)
where

    import GWind.Project.Domain (ProjectId, ProjectName)
    import GWind.Common.Transport (OutGoer)
    import GWind.Common.Request (emptyValue, emptyObject)
    import GWind.Common.Transport (outGoer)
    import GWind.Project.Request (projectQ)

--
    revisionOutGoerM :: IO OutGoer
    revisionOutGoerM =
        return (
            outGoer
                "https://cloudresourcemanager.googleapis.com/v1/projects"
                []
                emptyValue)

--
    creationOutGoerM :: ProjectId -> ProjectName -> IO OutGoer
    creationOutGoerM projectId projectName =
        return (
            outGoer
                "https://cloudresourcemanager.googleapis.com/v1/projects"
                []
                (projectQ projectId projectName))

--
    deletionOutGoerM :: ProjectId -> IO OutGoer
    deletionOutGoerM projectId =
        return (
            outGoer
                ("https://cloudresourcemanager.googleapis.com/v1/projects/" ++ projectId)
                []
                emptyValue)

--
    undeletionOutGoerM :: ProjectId -> IO OutGoer
    undeletionOutGoerM projectId =
        return (
            outGoer
                ("https://cloudresourcemanager.googleapis.com/v1/projects/" ++ projectId ++ ":undelete")
                []
                emptyObject)

--
