--
module GWind.ServiceAccountKey.Service (revisionServiceAccountKeysM, creationBodyM, deletionCodeM)
where

    import GWind.Common.Domain (Code, Body)
    import GWind.Project.Domain (ProjectId)
    import GWind.ServiceAccount.Domain (ServiceAccountEmail)
    import GWind.ServiceAccountKey.Domain (ServiceAccountKeyName)
    import GWind.ServiceAccountKey.Response (ServiceAccountKey)
    import GWind.ServiceAccountKey.Constructor (revisionOutGoerM, creationOutGoerM, deletionOutGoerM)
    import GWind.ServiceAccountKey.Adapter (revimentServiceAccountKeysM, creamentBodyM, delementCodeM)
    import GWind.Common.HTTP (gettingM, deletingM, postingM)

--
    revisionServiceAccountKeysM :: ProjectId -> ServiceAccountEmail -> IO [ServiceAccountKey]
    revisionServiceAccountKeysM projectId serviceAccountEmail =
        revisionOutGoerM projectId serviceAccountEmail
        >>= gettingM
        >>= revimentServiceAccountKeysM


--
    creationBodyM :: ProjectId -> ServiceAccountEmail -> IO Body
    creationBodyM projectId serviceAccountEmail =
        creationOutGoerM projectId serviceAccountEmail
        >>= postingM
        >>= creamentBodyM

--
    deletionCodeM :: ServiceAccountKeyName -> IO Code
    deletionCodeM serviceAccountKeyName =
        deletionOutGoerM serviceAccountKeyName
        >>= deletingM
        >>= delementCodeM

--
