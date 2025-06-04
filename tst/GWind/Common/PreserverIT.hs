--
module GWind.Common.PreserverIT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.Common.Preserver ({-preservingM, postervingM-})

--
    testList :: Test
    testList = TestList (
        preservingMCases
        ++ postervingMCases)

-- preservingM :: FilePath -> FilePath -> String -> IO Code
    preservingMCases :: [Test]
    preservingMCases = [{-
        TestCase (assertEqual
            "should return preservingM"
            undefined
            =<< preservingM undefined undefined undefined)-}]

-- postervingM :: FilePath -> FilePath -> IO ()
    postervingMCases :: [Test]
    postervingMCases = [{-
        TestCase (assertEqual
            "should return postervingM"
            undefined
            =<< postervingM undefined undefined)-}]

--
