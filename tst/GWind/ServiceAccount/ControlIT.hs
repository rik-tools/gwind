--
module GWind.ServiceAccount.ControlIT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.ServiceAccount.Control ({-reviseServiceAccountsM, createServiceAccountM, deleteServiceAccountM-})

--
    testList :: Test
    testList = TestList (
        reviseServiceAccountsMCases
        ++ createServiceAccountMCases
        ++ deleteServiceAccountMCases)

-- reviseServiceAccountsM :: ProjectSnake -> IO ()
    reviseServiceAccountsMCases :: [Test]
    reviseServiceAccountsMCases = [{-
        TestCase (assertEqual
            "should return reviseServiceAccountsM"
            undefined
            =<< reviseServiceAccountsM undefined)-}]

-- createServiceAccountM :: ProjectSnake -> ServiceSnake -> IO ()
    createServiceAccountMCases :: [Test]
    createServiceAccountMCases = [{-
        TestCase (assertEqual
            "should return createServiceAccountM"
            undefined
            =<< createServiceAccountM undefined undefined)-}]

-- deleteServiceAccountM :: ProjectSnake -> ServiceSnake -> IO ()
    deleteServiceAccountMCases :: [Test]
    deleteServiceAccountMCases = [{-
        TestCase (assertEqual
            "should return deleteServiceAccountM"
            undefined
            =<< deleteServiceAccountM undefined undefined)-}]

--
