--
module GWind.BillingProject.ConstructorIT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.BillingProject.Constructor ({-revisionOutGoerM, creationOutGoerM, deletionOutGoerM-})

--
    testList :: Test
    testList = TestList (
        revisionOutGoerMCases
        ++ creationOutGoerMCases
        ++ deletionOutGoerMCases)

-- revisionOutGoerM :: BillingAccountName -> IO OutGoer
    revisionOutGoerMCases :: [Test]
    revisionOutGoerMCases = [{-
        TestCase (assertEqual
            "should return revisionOutGoerM"
            undefined
            =<< revisionOutGoerM undefined)-}]

-- creationOutGoerM :: ProjectId -> BillingAccountName -> IO OutGoer
    creationOutGoerMCases :: [Test]
    creationOutGoerMCases = [{-
        TestCase (assertEqual
            "should return creationOutGoerM"
            undefined
            =<< creationOutGoerM undefined undefined)-}]

-- deletionOutGoerM :: ProjectId -> IO OutGoer
    deletionOutGoerMCases :: [Test]
    deletionOutGoerMCases = [{-
        TestCase (assertEqual
            "should return deletionOutGoerM"
            undefined
            =<< deletionOutGoerM undefined)-}]

--
