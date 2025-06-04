--
module GWind.ServiceAccountKey.Constructor (revisionOutGoerM, creationOutGoerM, deletionOutGoerM)
where

    import GWind.Common.Request (emptyObject)
    import GWind.Common.Transport (OutGoer, outGoer)
    import GWind.Project.Domain (ProjectId)
    import GWind.ServiceAccount.Domain (ServiceAccountEmail)
    import GWind.ServiceAccountKey.Domain (ServiceAccountKeyName)
    import GWind.ServiceAccountKey.Request (serviceAccountKeyQ)

--
    revisionOutGoerM :: ProjectId -> ServiceAccountEmail -> IO OutGoer
    revisionOutGoerM projectId serviceAccountEmail =
        return (
            outGoer
                ("https://iam.googleapis.com/v1/projects/" ++ projectId ++ "/serviceAccounts/" ++ serviceAccountEmail ++ "/keys")
                []
                emptyObject)

--
    creationOutGoerM :: ProjectId -> ServiceAccountEmail -> IO OutGoer
    creationOutGoerM projectId serviceAccountEmail =
        return (
            outGoer
                ("https://iam.googleapis.com/v1/projects/" ++ projectId ++ "/serviceAccounts/" ++ serviceAccountEmail ++ "/keys")
                []
                serviceAccountKeyQ)

--
    deletionOutGoerM :: ServiceAccountKeyName -> IO OutGoer
    deletionOutGoerM serviceAccountKeyName =
        return (
            outGoer
                ("https://iam.googleapis.com/v1/" ++ serviceAccountKeyName)
                []
                emptyObject)

--
