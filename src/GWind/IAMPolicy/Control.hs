-- ⚠
module GWind.IAMPolicy.Control (reviseIAMPolicyM, createIAMPolicyBindingM, deleteIAMPolicyBindingM, deleteIAMPolicyM)
where

    import GWind.Project.Domain (ProjectSnake)
    import GWind.ServiceAccount.Domain (ServiceSnake)

--
    reviseIAMPolicyM :: ProjectSnake -> IO ()
    reviseIAMPolicyM _ =
        undefined

--
    createIAMPolicyBindingM :: ProjectSnake -> ServiceSnake -> IO ()
    createIAMPolicyBindingM _ _ =
        undefined

--
    deleteIAMPolicyBindingM :: ProjectSnake -> ServiceSnake -> IO ()
    deleteIAMPolicyBindingM _ _ =
        undefined

--
    deleteIAMPolicyM :: ProjectSnake -> IO ()
    deleteIAMPolicyM _ =
        undefined

--
