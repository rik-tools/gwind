--
module GWind.Service.ConstructorIT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.Service.Constructor ({-revisionOutGoerM, creationOutGoerM, deletionOutGoerM-})

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

-- creationOutGoerM :: ProjectId -> [ServiceId] -> IO OutGoer
    creationOutGoerMCases :: [Test]
    creationOutGoerMCases = [{-
        TestCase (assertEqual
            "should return creationOutGoerM"
            undefined
            =<< creationOutGoerM undefined undefined)-}]

-- deletionOutGoerM :: ProjectId -> ServiceId -> IO OutGoer
    deletionOutGoerMCases :: [Test]
    deletionOutGoerMCases = [{-
        TestCase (assertEqual
            "should return deletionOutGoerM"
            undefined
            =<< deletionOutGoerM undefined undefined)-}]

--
