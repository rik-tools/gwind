--
module GWind.Common.CallerIT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.Common.Caller ({-rawGettingM, rawDeletionM, rawPostingM, rawPuttingM-})

--
    testList :: Test
    testList = TestList (
        rawGettingMCases
        ++ rawDeletionMCases
        ++ rawPostingMCases
        ++ rawPuttingMCases)

-- rawGettingM :: String -> Options -> IO (Int, ByteString)
    rawGettingMCases :: [Test]
    rawGettingMCases = [{-
        TestCase (assertEqual
            "should return rawGettingM"
            undefined
            =<< rawGettingM undefined undefined)-}]

-- rawDeletionM :: String -> Options -> IO (Int, ByteString)
    rawDeletionMCases :: [Test]
    rawDeletionMCases = [{-
        TestCase (assertEqual
            "should return rawDeletionM"
            undefined
            =<< rawDeletionM undefined undefined)-}]

-- rawPostingM :: Value -> String -> Options -> IO (Int, ByteString)
    rawPostingMCases :: [Test]
    rawPostingMCases = [{-
        TestCase (assertEqual
            "should return rawPostingM"
            undefined
            =<< rawPostingM undefined undefined undefined)-}]

-- rawPuttingM :: Value -> String -> Options -> IO (Int, ByteString)
    rawPuttingMCases :: [Test]
    rawPuttingMCases = [{-
        TestCase (assertEqual
            "should return rawPuttingM"
            undefined
            =<< rawPuttingM undefined undefined undefined)-}]

--
