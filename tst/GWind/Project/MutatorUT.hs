--
module GWind.Project.MutatorUT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.Project.Mutator ({-projectId, projectName-})

--
    testList :: Test
    testList = TestList (
        projectIdCases
        ++ projectNameCases)

-- projectId :: ProjectSnake -> ProjectId
    projectIdCases :: [Test]
    projectIdCases = [{-
        TestCase (assertEqual
            "should return projectId"
            "thy-project"
            (projectId "Thy_Project"))-}]

-- projectName :: ProjectSnake -> ProjectName
    projectNameCases :: [Test]
    projectNameCases = [{-
        TestCase (assertEqual
            "should return projectName"
            "Thy Project"
            (projectName "Thy_Project"))-}]

--
