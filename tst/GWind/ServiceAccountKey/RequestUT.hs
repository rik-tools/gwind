--
module GWind.ServiceAccountKey.RequestUT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.ServiceAccountKey.Request ({-serviceAccountKeyQ-})

--
    testList :: Test
    testList = TestList (
        serviceAccountKeyQCases)

-- serviceAccountKeyQ :: ServiceAccountKeyQ
    serviceAccountKeyQCases :: [Test]
    serviceAccountKeyQCases = [{-
        TestCase (assertEqual
            "should return serviceAccountKeyQ"
            undefined
            (serviceAccountKeyQ ))-}]

--
