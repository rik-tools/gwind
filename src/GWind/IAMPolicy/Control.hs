--
module GWind.IAMPolicy.Control (reviseIAMPolicyM, createIAMPolicyBindingM, deleteIAMPolicyBindingM, deleteIAMPolicyM)
where

    import GWind.Project.Domain (ProjectSnake)
    import GWind.ServiceAccount.Domain (ServiceSnake)
    import GWind.Project.Mutator (projectId)
    import GWind.ServiceAccount.Mutator (serviceAccountEmail)
    import GWind.IAMPolicy.Service (revisionIAMPolicyM, creationCodeM, bindingDeletionCodeM, policyDeletionCodeM)
    import GWind.Common.Presenter (presentingM)

--
    reviseIAMPolicyM :: ProjectSnake -> IO ()
    reviseIAMPolicyM projectSnake =
        let pid = projectId projectSnake
        in revisionIAMPolicyM pid
            >>= presentingM

--
    createIAMPolicyBindingM :: ProjectSnake -> ServiceSnake -> IO ()
    createIAMPolicyBindingM projectSnake serviceSnake =
        let
            pid = projectId projectSnake
            sae = serviceAccountEmail projectSnake serviceSnake
        in revisionIAMPolicyM pid
            >>= creationCodeM pid sae
            >>= presentingM

--
    deleteIAMPolicyBindingM :: ProjectSnake -> ServiceSnake -> IO ()
    deleteIAMPolicyBindingM projectSnake serviceSnake =
        let
            pid = projectId projectSnake
            sae = serviceAccountEmail projectSnake serviceSnake
        in revisionIAMPolicyM pid
            >>= bindingDeletionCodeM pid sae
            >>= presentingM

--
    deleteIAMPolicyM :: ProjectSnake -> IO ()
    deleteIAMPolicyM projectSnake =
        let pid = projectId projectSnake
        in revisionIAMPolicyM pid
            >>= policyDeletionCodeM pid
            >>= presentingM

--
