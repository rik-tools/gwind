--
module GWind.StorageBucket.MutatorUT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.StorageBucket.Mutator ({-storageBucketId-})

--
    testList :: Test
    testList = TestList (
        storageBucketIdCases)

-- storageBucketId :: ProjectSnake -> StorageBucketId
    storageBucketIdCases :: [Test]
    storageBucketIdCases = [{-
        TestCase (assertEqual
            "should return storageBucketId"
            undefined
            (storageBucketId undefined))-}]

--
