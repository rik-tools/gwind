--
module GWind.ServiceAccount.Constructor (revisionOutGoerM, creationOutGoerM, deletionOutGoerM)
where

    import GWind.Common.Transport (OutGoer, outGoer)
    import GWind.Common.Request (emptyObject)
    import GWind.Project.Domain (ProjectId)
    import GWind.ServiceAccount.Domain (ServiceAccountId, ServiceAccountDisplayName, ServiceAccountEmail)
    import GWind.ServiceAccount.Request (serviceAccountQ)

--
    revisionOutGoerM :: ProjectId -> IO OutGoer
    revisionOutGoerM projectId =
        return (
            outGoer
                ("https://iam.googleapis.com/v1/projects/" ++ projectId ++ "/serviceAccounts")
                []
                emptyObject)

--
    creationOutGoerM :: ProjectId -> ServiceAccountId -> ServiceAccountDisplayName -> IO OutGoer
    creationOutGoerM projectId serviceAccountId serviceAccountDisplayName =
        return (
            outGoer
                ("https://iam.googleapis.com/v1/projects/" ++ projectId ++ "/serviceAccounts")
                []
                (serviceAccountQ serviceAccountId serviceAccountDisplayName))

--
    deletionOutGoerM :: ProjectId -> ServiceAccountEmail -> IO OutGoer
    deletionOutGoerM projectId serviceAccountEmail =
        return (
            outGoer
                ("https://iam.googleapis.com/v1/projects/" ++ projectId ++ "/serviceAccounts/" ++ serviceAccountEmail)
                []
                emptyObject)

--
