--
module GWind.BillingProject.Constructor (revisionOutGoerM, creationOutGoerM, deletionOutGoerM)
where

    import GWind.Common.Request (emptyObject)
    import GWind.Common.Transport (OutGoer, outGoer)
    import GWind.Project.Domain (ProjectId)
    import GWind.BillingProject.Domain (BillingAccountName)
    import GWind.BillingProject.Request (billingProjectQ)

--
    revisionOutGoerM :: BillingAccountName -> IO OutGoer
    revisionOutGoerM billingAccountName =
        return (
            outGoer
                ("https://cloudbilling.googleapis.com/v1/" ++ billingAccountName ++ "/projects")
                []
                emptyObject)

--
    creationOutGoerM :: ProjectId -> BillingAccountName -> IO OutGoer
    creationOutGoerM projectId billingAccountName =
        return (
            outGoer
                ("https://cloudbilling.googleapis.com/v1/projects/" ++ projectId ++ "/billingInfo")
                []
                (billingProjectQ billingAccountName))

--
    deletionOutGoerM :: ProjectId -> IO OutGoer
    deletionOutGoerM projectId =
        return (
            outGoer
                ("https://cloudbilling.googleapis.com/v1/projects/" ++ projectId ++ "/billingInfo")
                []
                (billingProjectQ ""))

--
