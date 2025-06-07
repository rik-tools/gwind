--
module GWind.IAMPolicy.Service (revisionIAMPolicyM, creationCodeM, bindingDeletionCodeM, policyDeletionCodeM)
where

    import GWind.Common.Domain (Code)
    import GWind.Project.Domain (ProjectId)
    import GWind.ServiceAccount.Domain (ServiceAccountEmail)
    import GWind.IAMPolicy.Response (IAMPolicy)
    import GWind.IAMPolicy.Constructor (revisionOutGoerM, creationOutGoerM, bindingDeletionOutGoerM, policyDeletionOutGoerM)
    import GWind.IAMPolicy.Adapter (revimentIAMPolicyM, creamentCodeM, bindingDelementCodeM, policyDelementCodeM)
    import GWind.Common.HTTP (postingM)

--
    revisionIAMPolicyM :: ProjectId -> IO IAMPolicy
    revisionIAMPolicyM projectId =
        revisionOutGoerM projectId
        >>= postingM
        >>= revimentIAMPolicyM

--
    creationCodeM :: ProjectId -> ServiceAccountEmail -> IAMPolicy -> IO Code
    creationCodeM projectId serviceAccountEmail iamPolicy =
        creationOutGoerM projectId serviceAccountEmail iamPolicy
        >>= postingM
        >>= creamentCodeM

--
    bindingDeletionCodeM :: ProjectId -> ServiceAccountEmail -> IAMPolicy -> IO Code
    bindingDeletionCodeM projectId serviceAccountEmail iamPolicy =
        bindingDeletionOutGoerM projectId serviceAccountEmail iamPolicy
        >>= postingM
        >>= bindingDelementCodeM

--
    policyDeletionCodeM :: ProjectId -> IAMPolicy -> IO Code
    policyDeletionCodeM projectId iamPolicy =
        policyDeletionOutGoerM projectId iamPolicy
        >>= postingM
        >>= policyDelementCodeM

--
