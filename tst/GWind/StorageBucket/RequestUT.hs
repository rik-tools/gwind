--
module GWind.StorageBucket.RequestUT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.StorageBucket.Request ({-storageBucketQ-})

--
    testList :: Test
    testList = TestList (
        storageBucketQCases)

-- storageBucketQ :: ProjectId -> StorageBucketQ
    storageBucketQCases :: [Test]
    storageBucketQCases = [{-
        TestCase (assertEqual
            "should return storageBucketQ"
            undefined
            (storageBucketQ undefined))-}]

--
