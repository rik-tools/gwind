--
module GWind.ServiceAccountKey.ServiceIT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.ServiceAccountKey.Service ({-revisionServiceAccountKeysM, creationCodeM, deletionCodeM-})

--
    testList :: Test
    testList = TestList (
        revisionServiceAccountKeysMCases
        ++ creationCodeMCases
        ++ deletionCodeMCases)

-- revisionServiceAccountKeysM :: ProjectId -> ServiceAccountEmail -> IO [ServiceAccountKey]
    revisionServiceAccountKeysMCases :: [Test]
    revisionServiceAccountKeysMCases = [{-
        TestCase (assertEqual
            "should return revisionServiceAccountKeysM"
            undefined
            =<< revisionServiceAccountKeysM undefined undefined)-}]

-- creationCodeM :: ProjectId -> ServiceAccountEmail -> IO Code
    creationCodeMCases :: [Test]
    creationCodeMCases = [{-
        TestCase (assertEqual
            "should return creationCodeM"
            undefined
            =<< creationCodeM undefined undefined)-}]

-- deletionCodeM :: ProjectId -> ServiceAccountEmail -> ServiceAccountKeyName -> IO Code
    deletionCodeMCases :: [Test]
    deletionCodeMCases = [{-
        TestCase (assertEqual
            "should return deletionCodeM"
            undefined
            =<< deletionCodeM undefined undefined undefined)-}]

--
