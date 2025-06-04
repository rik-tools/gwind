--
module GWind.ServiceAccountKey.ConstructorIT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.ServiceAccountKey.Constructor ({-revisionOutGoerM, creationOutGoerM, deletionOutGoerM-})

--
    testList :: Test
    testList = TestList (
        revisionOutGoerMCases
        ++ creationOutGoerMCases
        ++ deletionOutGoerMCases)

-- revisionOutGoerM :: ProjectId -> ServiceAccountEmail -> IO OutGoer
    revisionOutGoerMCases :: [Test]
    revisionOutGoerMCases = [{-
        TestCase (assertEqual
            "should return revisionOutGoerM"
            undefined
            =<< revisionOutGoerM undefined undefined)-}]

-- creationOutGoerM :: ProjectId -> ServiceAccountEmail -> IO OutGoer
    creationOutGoerMCases :: [Test]
    creationOutGoerMCases = [{-
        TestCase (assertEqual
            "should return creationOutGoerM"
            undefined
            =<< creationOutGoerM undefined undefined)-}]

-- deletionOutGoerM :: ProjectId -> ServiceAccountEmail -> ServiceAccountKeyName -> IO OutGoer
    deletionOutGoerMCases :: [Test]
    deletionOutGoerMCases = [{-
        TestCase (assertEqual
            "should return deletionOutGoerM"
            undefined
            =<< deletionOutGoerM undefined undefined undefined)-}]

--
