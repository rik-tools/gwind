--
module GWind.Service.Request1UT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.Service.Request1 ({-services1-})

--
    testList :: Test
    testList = TestList (
        services1Cases)

-- services1 :: [ServiceId] -> Services1
    services1Cases :: [Test]
    services1Cases = [{-
        TestCase (assertEqual
            "should return services1"
            undefined
            (services1 undefined))-}]

--
