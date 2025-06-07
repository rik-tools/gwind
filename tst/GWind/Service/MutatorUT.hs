--
module GWind.Service.MutatorUT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.Service.Mutator ({-serviceIds-})

--
    testList :: Test
    testList = TestList (
        serviceIdsCases)

-- serviceIds :: ServiceNicks -> [ServiceId]
    serviceIdsCases :: [Test]
    serviceIdsCases = [{-
        TestCase (assertEqual
            "should return serviceIds"
            undefined
            (serviceIds undefined))-}]

--
