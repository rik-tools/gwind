--
module GWind.ServiceAccount.ServiceIT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.ServiceAccount.Service ({-revisionServiceAccountsM, creationCodeM, deletionCodeM-})

--
    testList :: Test
    testList = TestList (
        revisionServiceAccountsMCases
        ++ creationCodeMCases
        ++ deletionCodeMCases)

-- revisionServiceAccountsM :: ProjectId -> IO [ServiceAccount]
    revisionServiceAccountsMCases :: [Test]
    revisionServiceAccountsMCases = [{-
        TestCase (assertEqual
            "should return revisionServiceAccountsM"
            undefined
            =<< revisionServiceAccountsM undefined)-}]

-- creationCodeM :: ProjectId -> ServiceAccountId -> ServiceAccountName -> IO Code
    creationCodeMCases :: [Test]
    creationCodeMCases = [{-
        TestCase (assertEqual
            "should return creationCodeM"
            undefined
            =<< creationCodeM undefined undefined undefined)-}]

-- deletionCodeM :: ProjectId -> ServiceAccountEmail -> IO Code
    deletionCodeMCases :: [Test]
    deletionCodeMCases = [{-
        TestCase (assertEqual
            "should return deletionCodeM"
            undefined
            =<< deletionCodeM undefined undefined)-}]

--
