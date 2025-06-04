--
module GWind.ServiceAccountKey.ControlIT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.ServiceAccountKey.Control ({-reviseServiceAccountKeysM, createServiceAccountKeyM, deleteServiceAccountKeyM-})

--
    testList :: Test
    testList = TestList (
        reviseServiceAccountKeysMCases
        ++ createServiceAccountKeyMCases
        ++ deleteServiceAccountKeyMCases)

-- reviseServiceAccountKeysM :: ProjectSnake -> ServiceSnake -> IO ()
    reviseServiceAccountKeysMCases :: [Test]
    reviseServiceAccountKeysMCases = [{-
        TestCase (assertEqual
            "should return reviseServiceAccountKeysM"
            undefined
            =<< reviseServiceAccountKeysM undefined undefined)-}]

-- createServiceAccountKeyM :: ProjectSnake -> ServiceSnake -> IO ()
    createServiceAccountKeyMCases :: [Test]
    createServiceAccountKeyMCases = [{-
        TestCase (assertEqual
            "should return createServiceAccountKeyM"
            undefined
            =<< createServiceAccountKeyM undefined undefined)-}]

-- deleteServiceAccountKeyM :: ProjectSnake -> ServiceSnake -> IO ()
    deleteServiceAccountKeyMCases :: [Test]
    deleteServiceAccountKeyMCases = [{-
        TestCase (assertEqual
            "should return deleteServiceAccountKeyM"
            undefined
            =<< deleteServiceAccountKeyM undefined undefined)-}]

--
