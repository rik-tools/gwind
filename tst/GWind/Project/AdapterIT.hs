--
module GWind.Project.AdapterIT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.Project.Adapter ({-revimentProjectsM, creamentCodeM, delementCodeM, undelementCodeM-})

--
    testList :: Test
    testList = TestList (
        revimentProjectsMCases
        ++ creamentCodeMCases
        ++ delementCodeMCases
        ++ undelementCodeMCases)

-- revimentProjectsM :: InComer -> IO [Project]
    revimentProjectsMCases :: [Test]
    revimentProjectsMCases = [{-
        TestCase (assertEqual
            "should return revimentProjectsM"
            undefined
            =<< revimentProjectsM undefined)-}]

-- creamentCodeM :: InComer -> IO Code
    creamentCodeMCases :: [Test]
    creamentCodeMCases = [{-
        TestCase (assertEqual
            "should return creamentCodeM"
            undefined
            =<< creamentCodeM undefined)-}]

-- delementCodeM :: InComer -> IO Code
    delementCodeMCases :: [Test]
    delementCodeMCases = [{-
        TestCase (assertEqual
            "should return delementCodeM"
            undefined
            =<< delementCodeM undefined)-}]

-- undelementCodeM :: InComer -> IO Code
    undelementCodeMCases :: [Test]
    undelementCodeMCases = [{-
        TestCase (assertEqual
            "should return undelementCodeM"
            undefined
            =<< undelementCodeM undefined)-}]

--
