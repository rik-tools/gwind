--
module GWind.Project.ConstructorIT (testList)
where


    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.Project.Constructor ({-revisionOutGoerM, creationOutGoerM, deletionOutGoerM, undeletionOutGoerM-})

--
    testList :: Test
    testList = TestList (
        revisionOutGoerMCases
        ++ creationOutGoerMCases
        ++ deletionOutGoerMCases
        ++ undeletionOutGoerMCases)

-- revisionOutGoerM :: IO OutGoer
    revisionOutGoerMCases :: [Test]
    revisionOutGoerMCases = [{-
        TestCase (assertEqual
            "should return revisionOutGoerM"
            ()
            =<< revisionOutGoerM)-}]

-- creationOutGoerM :: ProjectId -> ProjectName -> IO OutGoer
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

-- undeletionOutGoerM :: ProjectId -> IO OutGoer
    undeletionOutGoerMCases :: [Test]
    undeletionOutGoerMCases = [{-
        TestCase (assertEqual
            "should return undeletionOutGoerM"
            undefined
            =<< undeletionOutGoerM undefined)-}]

--
