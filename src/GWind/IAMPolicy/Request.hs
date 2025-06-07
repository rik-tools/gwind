{-# LANGUAGE DeriveGeneric #-}
module GWind.IAMPolicy.Request (
    IAMPolicyQ (IAMPolicyQ), policy,
    bindingIntroductionQ, bindingEliminationQ, policyEliminationQ)
where

    import Data.Aeson (ToJSON)
    import Data.List (isInfixOf)
    import GHC.Generics (Generic)
    import GWind.ServiceAccount.Domain (ServiceAccountEmail)
    import GWind.IAMPolicy.Response (IAMPolicy (IAMPolicy), bindings, etag, version, Binding (Binding), members, role)

    data IAMPolicyQ = IAMPolicyQ {
        policy :: IAMPolicy}
        deriving (Eq, Show, Read, Generic)

    instance ToJSON IAMPolicyQ

--
    bindingIntroductionQ :: ServiceAccountEmail -> IAMPolicy -> IAMPolicyQ
    bindingIntroductionQ serviceAccountEmail iamPolicy = IAMPolicyQ {
        policy = largerIAMPolicy serviceAccountEmail iamPolicy}

    largerIAMPolicy :: ServiceAccountEmail -> IAMPolicy ->  IAMPolicy
    largerIAMPolicy serviceAccountEmail iamPolicy = IAMPolicy {
        bindings = largerBindings (bindings iamPolicy) serviceAccountEmail,
        etag     = etag iamPolicy,
        version  = version iamPolicy}

    largerBindings :: [Binding] -> ServiceAccountEmail -> [Binding]
    largerBindings [] serviceAccountEmail = [Binding {role = "roles/editor", members = ["serviceAccount:" ++ serviceAccountEmail]}]
    largerBindings (binding: bindings) serviceAccountEmail
        | role binding == "roles/editor" = largerBinding binding serviceAccountEmail: bindings
        | otherwise =  binding: largerBindings bindings serviceAccountEmail

    largerBinding :: Binding -> ServiceAccountEmail -> Binding
    largerBinding binding serviceAccountEmail = Binding {
        role = role binding,
        members = members binding ++ ["serviceAccount:" ++ serviceAccountEmail]}

--
    bindingEliminationQ :: ServiceAccountEmail -> IAMPolicy -> IAMPolicyQ
    bindingEliminationQ serviceAccountEmail iamPolicy = IAMPolicyQ {
        policy = smallerIAMPolicy serviceAccountEmail iamPolicy}

    smallerIAMPolicy :: ServiceAccountEmail -> IAMPolicy ->  IAMPolicy
    smallerIAMPolicy serviceAccountEmail iamPolicy = IAMPolicy {
        bindings = smallerBindings (bindings iamPolicy) serviceAccountEmail,
        etag     = etag iamPolicy,
        version  = version iamPolicy}

    smallerBindings :: [Binding] -> ServiceAccountEmail -> [Binding]
    smallerBindings [] _ = []
    smallerBindings (binding: bindings) serviceAccountEmail
        | role binding == "roles/editor" = smallerBinding binding serviceAccountEmail: bindings
        | otherwise =  binding: smallerBindings bindings serviceAccountEmail

    smallerBinding :: Binding -> ServiceAccountEmail -> Binding
    smallerBinding binding serviceAccountEmail = Binding {
        role = role binding,
        members = filter (isNotServiceAccountEmail serviceAccountEmail) (members binding)}

    isNotServiceAccountEmail :: ServiceAccountEmail -> String -> Bool
    isNotServiceAccountEmail serviceAccountEmail member = not (isInfixOf serviceAccountEmail member)

--
    policyEliminationQ :: IAMPolicy -> IAMPolicyQ
    policyEliminationQ iamPolicy = IAMPolicyQ {
        policy = resetIAMPolicy iamPolicy}

    resetIAMPolicy :: IAMPolicy ->  IAMPolicy
    resetIAMPolicy iamPolicy = IAMPolicy {
        bindings = resetBindings (bindings iamPolicy),
        etag     = etag iamPolicy,
        version  = version iamPolicy}

    resetBindings :: [Binding] -> [Binding]
    resetBindings [] = []
    resetBindings (binding: bindings)
        | role binding == "roles/owner" = [binding]
        | otherwise =  resetBindings bindings

--
