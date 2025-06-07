--
module GWind.IAMPolicy.Constructor (revisionOutGoerM, creationOutGoerM, bindingDeletionOutGoerM, policyDeletionOutGoerM)
where

    import GWind.Common.Request (emptyObject)
    import GWind.Common.Transport (OutGoer, outGoer)
    import GWind.Project.Domain (ProjectId)
    import GWind.ServiceAccount.Domain (ServiceAccountEmail)
    import GWind.IAMPolicy.Response (IAMPolicy)
    import GWind.IAMPolicy.Request (bindingIntroductionQ, bindingEliminationQ, policyEliminationQ)

--
    revisionOutGoerM :: ProjectId -> IO OutGoer
    revisionOutGoerM projectId =
        return (
            outGoer
                ("https://cloudresourcemanager.googleapis.com/v3/projects/" ++ projectId ++ ":getIamPolicy")
                []
                emptyObject)

--
    creationOutGoerM :: ProjectId -> ServiceAccountEmail -> IAMPolicy -> IO OutGoer
    creationOutGoerM projectId serviceAccountEmail iamPolicy =
        return (
            outGoer
                ("https://cloudresourcemanager.googleapis.com/v1/projects/" ++ projectId ++ ":setIamPolicy")
                []
                (bindingIntroductionQ serviceAccountEmail iamPolicy))

--
    bindingDeletionOutGoerM :: ProjectId -> ServiceAccountEmail -> IAMPolicy -> IO OutGoer
    bindingDeletionOutGoerM projectId serviceAccountEmail iamPolicy =
        return (
            outGoer
                ("https://cloudresourcemanager.googleapis.com/v1/projects/" ++ projectId ++ ":setIamPolicy")
                []
                (bindingEliminationQ serviceAccountEmail iamPolicy))

--
    policyDeletionOutGoerM :: ProjectId -> IAMPolicy -> IO OutGoer
    policyDeletionOutGoerM projectId iamPolicy =
        return (
            outGoer
                ("https://cloudresourcemanager.googleapis.com/v1/projects/" ++ projectId ++ ":setIamPolicy")
                []
                (policyEliminationQ iamPolicy))

--
