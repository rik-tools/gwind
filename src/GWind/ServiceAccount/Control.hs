--
module GWind.ServiceAccount.Control (reviseServiceAccountsM, createServiceAccountM, deleteServiceAccountM)
where

    import GWind.Project.Domain (ProjectSnake)
    import GWind.ServiceAccount.Domain (ServiceSnake)
    import GWind.Project.Mutator (projectId)
    import GWind.ServiceAccount.Mutator (serviceAccountId, serviceAccountDisplayName, serviceAccountEmail)
    import GWind.ServiceAccount.Service (revisionServiceAccountsM, creationCodeM, deletionCodeM)
    import GWind.Common.Presenter (presentingM)

--
    reviseServiceAccountsM :: ProjectSnake -> IO ()
    reviseServiceAccountsM projectSnake =
        let pid = projectId projectSnake
        in revisionServiceAccountsM pid
            >>= presentingM

--
    createServiceAccountM :: ProjectSnake -> ServiceSnake -> IO ()
    createServiceAccountM projectSnake serviceSnake =
        let
            pid = projectId projectSnake
            sid = serviceAccountId serviceSnake
            sdn = serviceAccountDisplayName serviceSnake
        in creationCodeM pid sid sdn
            >>= presentingM

--
    deleteServiceAccountM :: ProjectSnake -> ServiceSnake -> IO ()
    deleteServiceAccountM projectSnake serviceSnake =
        let
            pid = projectId projectSnake
            sae = serviceAccountEmail projectSnake serviceSnake
        in deletionCodeM pid sae
            >>= presentingM

--
