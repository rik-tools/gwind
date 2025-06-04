--
module GWind.Common.RequestUT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.Common.Request ({-emptyValue-})

--
    testList :: Test
    testList = TestList (
        emptyValueCases
        ++ emptyObjectCases)

-- emptyValue :: Empty
    emptyValueCases :: [Test]
    emptyValueCases = [{-
        TestCase (assertEqual
            "should return emptyValue"
            undefined
            (emptyValue))-}]

-- emptyObject :: Value
    emptyObjectCases :: [Test]
    emptyObjectCases = [{-
        TestCase (assertEqual
            "should return emptyObject"
            undefined
            (emptyObject))-}]

--
