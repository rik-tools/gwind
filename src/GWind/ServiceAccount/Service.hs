--
module GWind.ServiceAccount.Service (revisionServiceAccountsM, creationCodeM, deletionCodeM)
where

    import GWind.Common.Domain (Code)
    import GWind.Project.Domain (ProjectId)
    import GWind.ServiceAccount.Response (ServiceAccount)
    import GWind.ServiceAccount.Domain (ServiceAccountId, ServiceAccountDisplayName, ServiceAccountEmail)
    import GWind.ServiceAccount.Adapter (revimentServiceAccountsM, creamentCodeM, delementCodeM)
    import GWind.ServiceAccount.Constructor (revisionOutGoerM, creationOutGoerM, deletionOutGoerM)
    import GWind.Common.HTTP (gettingM, deletingM, postingM)

--
    revisionServiceAccountsM :: ProjectId -> IO [ServiceAccount]
    revisionServiceAccountsM projectId =
        revisionOutGoerM projectId
        >>= gettingM
        >>= revimentServiceAccountsM


--
    creationCodeM :: ProjectId -> ServiceAccountId -> ServiceAccountDisplayName -> IO Code
    creationCodeM projectId serviceAccountId serviceAccountDisplayName =
        creationOutGoerM projectId serviceAccountId serviceAccountDisplayName
        >>= postingM
        >>= creamentCodeM

--
    deletionCodeM :: ProjectId -> ServiceAccountEmail -> IO Code
    deletionCodeM projectId serviceAccountEmail =
        deletionOutGoerM projectId serviceAccountEmail
        >>= deletingM
        >>= delementCodeM

--
