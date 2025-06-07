--
module GWind.BillingProject.Control (
    reviseBillingProjectsM,
    createBillingProjectM,
    deleteBillingProjectM)
where

    import GWind.Project.Domain (ProjectSnake)
    import GWind.BillingProject.Domain (BillingSnake)
    import GWind.Project.Mutator (projectId)
    import GWind.BillingProject.Mutator (billingAccountDisplayName)
    import GWind.BillingProject.Accessor (billingAccountNameM)
    import GWind.BillingAccount.Service (revisionBillingAccountsM)
    import GWind.BillingProject.Service (revisionBillingProjectsM, creationCodeM, deletionCodeM)
    import GWind.Common.Presenter (presentingM)

--
    reviseBillingProjectsM :: BillingSnake -> IO ()
    reviseBillingProjectsM billingSnake =
        let bdn = billingAccountDisplayName billingSnake
        in revisionBillingAccountsM
            >>= billingAccountNameM bdn
            >>= revisionBillingProjectsM
            >>= presentingM

--
    createBillingProjectM :: ProjectSnake -> BillingSnake -> IO ()
    createBillingProjectM projectSnake billingSnake =
        let
            pid = projectId projectSnake
            bdn = billingAccountDisplayName billingSnake
        in revisionBillingAccountsM
            >>= billingAccountNameM bdn
            >>= creationCodeM pid
            >>= presentingM

--
    deleteBillingProjectM :: ProjectSnake -> IO ()
    deleteBillingProjectM projectSnake =
        let pid = projectId projectSnake
        in deletionCodeM pid
            >>= presentingM

--
