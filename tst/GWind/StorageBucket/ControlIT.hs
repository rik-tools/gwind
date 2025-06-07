--
module GWind.StorageBucket.ControlIT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.StorageBucket.Control ({-reviseStorageBucketsM, createStorageBucketM, deleteStorageBucketM-})

--
    testList :: Test
    testList = TestList (
        reviseStorageBucketsMCases
        ++ createStorageBucketMCases
        ++ deleteStorageBucketMCases)

-- reviseStorageBucketsM :: ProjectSnake -> IO ()
    reviseStorageBucketsMCases :: [Test]
    reviseStorageBucketsMCases = [{-
        TestCase (assertEqual
            "should return reviseStorageBucketsM"
            undefined
            =<< reviseStorageBucketsM undefined)-}]

-- createStorageBucketM :: ProjectSnake -> IO ()
    createStorageBucketMCases :: [Test]
    createStorageBucketMCases = [{-
        TestCase (assertEqual
            "should return createStorageBucketM"
            undefined
            =<< createStorageBucketM undefined)-}]

-- deleteStorageBucketM :: ProjectSnake -> IO ()
    deleteStorageBucketMCases :: [Test]
    deleteStorageBucketMCases = [{-
        TestCase (assertEqual
            "should return deleteStorageBucketM"
            undefined
            =<< deleteStorageBucketM undefined)-}]

--
