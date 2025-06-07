--
module GWind.BillingProject.Service (revisionBillingProjectsM, creationCodeM, deletionCodeM)
where

    import GWind.BillingProject.Response (BillingProject)
    import GWind.BillingProject.Domain (BillingAccountName)
    import GWind.Project.Domain (ProjectId)
    import GWind.Common.Domain (Code)
    import GWind.BillingProject.Constructor (revisionOutGoerM, creationOutGoerM, deletionOutGoerM)
    import GWind.BillingProject.Adapter (revimentBillingProjectsM, creamentCodeM, delementCodeM)
    import GWind.Common.HTTP (gettingM, puttingM)

--
    revisionBillingProjectsM :: BillingAccountName -> IO [BillingProject]
    revisionBillingProjectsM billingAccountName =
        revisionOutGoerM billingAccountName
        >>= gettingM
        >>= revimentBillingProjectsM

--
    creationCodeM :: ProjectId -> BillingAccountName -> IO Code
    creationCodeM projectId billingAccountName =
        creationOutGoerM projectId billingAccountName
        >>= puttingM
        >>= creamentCodeM

--
    deletionCodeM :: ProjectId -> IO Code
    deletionCodeM projectId =
        deletionOutGoerM projectId
        >>= puttingM
        >>= delementCodeM

--
