--
module GWind.ServiceAccountKey.AccessorIT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.ServiceAccountKey.Accessor ({-serviceAccountKeyNamesM-})

--
    testList :: Test
    testList = TestList (
        serviceAccountKeyNamesMCases)

-- serviceAccountKeyNamesM :: [ServiceAccountKey] -> IO [ServiceAccountKeyName]
    serviceAccountKeyNamesMCases :: [Test]
    serviceAccountKeyNamesMCases = [{-
        TestCase (assertEqual
            "should return serviceAccountKeyNamesM"
            undefined
            =<< serviceAccountKeyNamesM undefined)-}]

--
