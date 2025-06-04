--
module GWind.Project.ServiceIT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.Project.Service ({-revisionProjectsM, creationCodeM, deletionCodeM, undeletionCodeM-})

--
    testList :: Test
    testList = TestList (
        revisionProjectsMCases
        ++ creationCodeMCases
        ++ deletionCodeMCases
        ++ undeletionCodeMCases)

-- revisionProjectsM :: IO [Project]
    revisionProjectsMCases :: [Test]
    revisionProjectsMCases = [{-
        TestCase (assertEqual
            "should return revisionProjectsM"
            undefined
            =<< revisionProjectsM)-}]

-- creationCodeM :: ProjectId -> ProjectName -> IO Code
    creationCodeMCases :: [Test]
    creationCodeMCases = [{-
        TestCase (assertEqual
            "should return creationCodeM"
            undefined
            =<< creationCodeM undefined undefined)-}]

-- deletionCodeM :: ProjectId -> IO Code
    deletionCodeMCases :: [Test]
    deletionCodeMCases = [{-
        TestCase (assertEqual
            "should return deletionCodeM"
            undefined
            =<< deletionCodeM undefined)-}]

-- undeletionCodeM :: ProjectId -> IO Code
    undeletionCodeMCases :: [Test]
    undeletionCodeMCases = [{-
        TestCase (assertEqual
            "should return undeletionCodeM"
            undefined
            =<< undeletionCodeM undefined)-}]

--
