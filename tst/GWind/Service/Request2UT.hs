--
module GWind.Service.Request2UT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.Service.Request2 ({-services2-})

--
    testList :: Test
    testList = TestList (
        services2Cases)

-- services2 :: Services2
    services2Cases :: [Test]
    services2Cases = [{-
        TestCase (assertEqual
            "should return services2"
            undefined
            (services2 ))-}]

--
