--
module GWind.Common.HTTPIT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.Common.HTTP ({-gettingM, deletingM, postingM, puttingM-})

--
    testList :: Test
    testList = TestList (
        gettingMCases
        ++ deletingMCases
        ++ postingMCases
        ++ puttingMCases)

-- gettingM :: OutGoer -> IO InComer
    gettingMCases :: [Test]
    gettingMCases = [{-
        TestCase (assertEqual
            "should return gettingM"
            undefined
            =<< gettingM undefined)-}]

-- deletingM :: OutGoer -> IO InComer
    deletingMCases :: [Test]
    deletingMCases = [{-
        TestCase (assertEqual
            "should return deletingM"
            undefined
            =<< deletingM undefined)-}]

-- postingM :: OutGoer -> IO InComer
    postingMCases :: [Test]
    postingMCases = [{-
        TestCase (assertEqual
            "should return postingM"
            undefined
            =<< postingM undefined)-}]

-- puttingM :: OutGoer -> IO InComer
    puttingMCases :: [Test]
    puttingMCases = [{-
        TestCase (assertEqual
            "should return puttingM"
            undefined
            =<< puttingM undefined)-}]

--
