--
module GWind.Project.RequestUT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList))
    import GWind.Project.Request ({-projectQ-})

--
    testList :: Test
    testList = TestList (
        projectQCases)

-- projectQ :: ProjectId -> ProjectName -> Project
    projectQCases :: [Test]
    projectQCases = [{-
        TestCase (assertEqual
            "should return projectQ"
            undefined
            (projectQ undefined undefined))-}]

--
