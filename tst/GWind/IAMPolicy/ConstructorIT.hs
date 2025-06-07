--
module GWind.IAMPolicy.ConstructorIT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.IAMPolicy.Constructor ({-revisionOutGoerM, creationOutGoerM, bindingDeletionOutGoerM, policyDeletionOutGoerM-})

--
    testList :: Test
    testList = TestList (
        revisionOutGoerMCases
        ++ creationOutGoerMCases
        ++ bindingDeletionOutGoerMCases
        ++ policyDeletionOutGoerMCases)

-- revisionOutGoerM :: ProjectId -> IO OutGoer
    revisionOutGoerMCases :: [Test]
    revisionOutGoerMCases = [{-
        TestCase (assertEqual
            "should return revisionOutGoerM"
            undefined
            =<< revisionOutGoerM undefined)-}]

-- creationOutGoerM :: ProjectId -> IAMPolicy -> IO OutGoer
    creationOutGoerMCases :: [Test]
    creationOutGoerMCases = [{-
        TestCase (assertEqual
            "should return creationOutGoerM"
            undefined
            =<< creationOutGoerM undefined undefined)-}]

-- bindingDeletionOutGoerM :: ProjectId -> IAMPolicy -> IO OutGoer
    bindingDeletionOutGoerMCases :: [Test]
    bindingDeletionOutGoerMCases = [{-
        TestCase (assertEqual
            "should return bindingDeletionOutGoerM"
            undefined
            =<< bindingDeletionOutGoerM undefined undefined)-}]

-- policyDeletionOutGoerM :: ProjectId -> IAMPolicy -> IO OutGoer
    policyDeletionOutGoerMCases :: [Test]
    policyDeletionOutGoerMCases = [{-
        TestCase (assertEqual
            "should return policyDeletionOutGoerM"
            undefined
            =<< policyDeletionOutGoerM undefined undefined)-}]

--
