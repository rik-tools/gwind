--
module GWind.Project.ControlIT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.Project.Control ({-reviseProjectsM, createProjectM, deleteProjectM-})

--
    testList :: Test
    testList = TestList (
        reviseProjectsMCases
        ++ createProjectMCases
        ++ deleteProjectMCases)

-- reviseProjectsM :: IO ()
    reviseProjectsMCases :: [Test]
    reviseProjectsMCases = [{-
        TestCase (assertEqual
            "should return reviseProjectsM"
            ()
            =<< reviseProjectsM)-}]

-- createProjectM :: ProjectSnake -> IO ()
    createProjectMCases :: [Test]
    createProjectMCases = [{-
        TestCase (assertEqual
            "should return createProjectM"
            undefined
            =<< createProjectM undefined)-}]

-- deleteProjectM :: ProjectSnake -> IO ()
    deleteProjectMCases :: [Test]
    deleteProjectMCases = [{-
        TestCase (assertEqual
            "should return deleteProjectM"
            undefined
            =<< deleteProjectM undefined)-}]

--
