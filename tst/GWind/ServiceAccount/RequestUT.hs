--
module GWind.ServiceAccount.RequestUT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.ServiceAccount.Request ({-serviceAccountQ-})

--
    testList :: Test
    testList = TestList (
        serviceAccountQCases)

-- serviceAccountQ :: ServiceAccountId -> ServiceAccountDisplayName -> ServiceAccountQ
    serviceAccountQCases :: [Test]
    serviceAccountQCases = [{-
        TestCase (assertEqual
            "should return serviceAccountQ"
            undefined
            (serviceAccountQ undefined undefined))-}]

--
