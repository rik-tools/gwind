--
module GWind.ServiceAccount.ConstructorIT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.ServiceAccount.Constructor ({-revisionOutGoerM, creationOutGoerM, deletionOutGoerM-})

--
    testList :: Test
    testList = TestList (
        revisionOutGoerMCases
        ++ creationOutGoerMCases
        ++ deletionOutGoerMCases)

-- revisionOutGoerM :: ProjectId -> IO OutGoer
    revisionOutGoerMCases :: [Test]
    revisionOutGoerMCases = [{-
        TestCase (assertEqual
            "should return revisionOutGoerM"
            undefined
            =<< revisionOutGoerM undefined)-}]

-- creationOutGoerM :: ProjectId -> ServiceAccountId -> ServiceAccountDisplayName -> IO OutGoer
    creationOutGoerMCases :: [Test]
    creationOutGoerMCases = [{-
        TestCase (assertEqual
            "should return creationOutGoerM"
            undefined
            =<< creationOutGoerM undefined undefined undefined)-}]

-- deletionOutGoerM :: ProjectId -> ServiceAccountName -> IO OutGoer
    deletionOutGoerMCases :: [Test]
    deletionOutGoerMCases = [{-
        TestCase (assertEqual
            "should return deletionOutGoerM"
            undefined
            =<< deletionOutGoerM undefined undefined)-}]

--
