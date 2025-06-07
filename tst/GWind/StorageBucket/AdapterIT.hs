--
module GWind.StorageBucket.AdapterIT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.StorageBucket.Adapter ({-revimentStorageBucketsM, creamentCodeM, delementCodeM-})

--
    testList :: Test
    testList = TestList (
        revimentStorageBucketsMCases
        ++ creamentCodeMCases
        ++ delementCodeMCases)

-- revimentStorageBucketsM :: InComer -> IO [StorageBucket]
    revimentStorageBucketsMCases :: [Test]
    revimentStorageBucketsMCases = [{-
        TestCase (assertEqual
            "should return revimentStorageBucketsM"
            undefined
            =<< revimentStorageBucketsM undefined)-}]

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

--
