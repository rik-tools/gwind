--
module GWind.ServiceAccountKey.Control (reviseServiceAccountKeysM, createServiceAccountKeyM, deleteServiceAccountKeyM)
where

    import GWind.Project.Domain (ProjectSnake)
    import GWind.ServiceAccount.Domain (ServiceSnake)
    import GWind.Project.Mutator (projectId)
    import GWind.ServiceAccount.Mutator (serviceAccountId, serviceAccountEmail)
    import GWind.ServiceAccountKey.Accessor (serviceAccountKeyNamesM)
    import GWind.ServiceAccountKey.Service (revisionServiceAccountKeysM, creationBodyM, deletionCodeM)
    import GWind.Common.Presenter (presentingM)
    import GWind.Common.Preserver (preservingM, postervingM)

--
    reviseServiceAccountKeysM :: ProjectSnake -> ServiceSnake -> IO ()
    reviseServiceAccountKeysM projectSnake serviceSnake =
        let
            pid = projectId projectSnake
            sae = serviceAccountEmail projectSnake serviceSnake
        in revisionServiceAccountKeysM pid sae
            >>= presentingM

--
    createServiceAccountKeyM :: ProjectSnake -> ServiceSnake -> IO ()
    createServiceAccountKeyM projectSnake serviceSnake =
        let
            pid = projectId projectSnake
            sid = serviceAccountId serviceSnake
            sae = serviceAccountEmail projectSnake serviceSnake
        in creationBodyM pid sae
            >>= preservingM pid sid
            >>= presentingM

--
    deleteServiceAccountKeyM :: ProjectSnake -> ServiceSnake -> IO ()
    deleteServiceAccountKeyM projectSnake serviceSnake =
        let
            pid = projectId projectSnake
            sid = serviceAccountId serviceSnake
            sae = serviceAccountEmail projectSnake serviceSnake
        in revisionServiceAccountKeysM pid sae
            >>= serviceAccountKeyNamesM
            >>= \kis -> mapM deletionCodeM kis
                >>= presentingM
                >>  postervingM pid sid

--
