--
module GWind.StorageBucket.ServiceIT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.StorageBucket.Service ({-revisionStorageBucketsM, creationCodeM, deletionCodesM-})

--
    testList :: Test
    testList = TestList (
        revisionStorageBucketsMCases
        ++ creationCodeMCases
        ++ deletionCodesMCases)

-- revisionStorageBucketsM :: ProjectId -> IO [StorageBucket]
    revisionStorageBucketsMCases :: [Test]
    revisionStorageBucketsMCases = [{-
        TestCase (assertEqual
            "should return revisionStorageBucketsM"
            undefined
            =<< revisionStorageBucketsM undefined)-}]

-- creationCodeM :: ProjectId -> IO Code
    creationCodeMCases :: [Test]
    creationCodeMCases = [{-
        TestCase (assertEqual
            "should return creationCodeM"
            undefined
            =<< creationCodeM undefined)-}]

-- deletionCodesM :: ProjectId -> IO Code
    deletionCodesMCases :: [Test]
    deletionCodesMCases = [{-
        TestCase (assertEqual
            "should return deletionCodesM"
            undefined
            =<< deletionCodesM undefined)-}]

--
