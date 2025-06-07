--
module GWind.IAMPolicy.ServiceIT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.IAMPolicy.Service ({-revisionIAMPolicyM, creationCodeM, bindingDeletionCodeM, policyDeletionCodeM-})

--
    testList :: Test
    testList = TestList (
        revisionIAMPolicyMCases
        ++ creationCodeMCases
        ++ bindingDeletionCodeMCases
        ++ policyDeletionCodeMCases)

-- revisionIAMPolicyM :: ProjectId -> IO IAMPolicy
    revisionIAMPolicyMCases :: [Test]
    revisionIAMPolicyMCases = [{-
        TestCase (assertEqual
            "should return revisionIAMPolicyM"
            undefined
            =<< revisionIAMPolicyM undefined)-}]

-- creationCodeM :: ProjectId -> ServiceAccountEmail -> IAMPolicy -> IO Code
    creationCodeMCases :: [Test]
    creationCodeMCases = [{-
        TestCase (assertEqual
            "should return creationCodeM"
            undefined
            =<< creationCodeM undefined undefined undefined)-}]

-- bindingDeletionCodeM :: ProjectId -> ServiceAccountEmail -> IAMPolicy -> IO Code
    bindingDeletionCodeMCases :: [Test]
    bindingDeletionCodeMCases = [{-
        TestCase (assertEqual
            "should return bindingDeletionCodeM"
            undefined
            =<< bindingDeletionCodeM undefined undefined undefined)-}]

-- policyDeletionCodeM :: ProjectId -> IAMPolicy -> IO Code
    policyDeletionCodeMCases :: [Test]
    policyDeletionCodeMCases = [{-
        TestCase (assertEqual
            "should return policyDeletionCodeM"
            undefined
            =<< policyDeletionCodeM undefined undefined)-}]

--
