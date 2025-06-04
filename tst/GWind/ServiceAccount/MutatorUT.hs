--
module GWind.ServiceAccount.MutatorUT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.ServiceAccount.Mutator ({-serviceAccountId, serviceAccountDisplayName, serviceAccountEmail, serviceAccountName-})

--
    testList :: Test
    testList = TestList (
        serviceAccountIdCases
        ++ serviceAccountDisplayNameCases
        ++ serviceAccountEmailCases
        ++ serviceAccountNameCases)

-- serviceAccountId :: ServiceSnake -> ServiceAccountId
    serviceAccountIdCases :: [Test]
    serviceAccountIdCases = [{-
        TestCase (assertEqual
            "should return serviceAccountId"
            undefined
            (serviceAccountId undefined))-}]

-- serviceAccountDisplayName :: ServiceSnake -> ServiceAccountDisplayName
    serviceAccountDisplayNameCases :: [Test]
    serviceAccountDisplayNameCases = [{-
        TestCase (assertEqual
            "should return serviceAccountDisplayName"
            undefined
            (serviceAccountDisplayName undefined))-}]

-- serviceAccountEmail :: ProjectSnake -> ServiceSnake -> ServiceAccountEmail
    serviceAccountEmailCases :: [Test]
    serviceAccountEmailCases = [{-
        TestCase (assertEqual
            "should return serviceAccountEmail"
            undefined
            (serviceAccountEmail undefined undefined))-}]

-- serviceAccountName :: ProjectSnake -> ServiceSnake -> ServiceAccountName
    serviceAccountNameCases :: [Test]
    serviceAccountNameCases = [{-
        TestCase (assertEqual
            "should return serviceAccountName"
            undefined
            (serviceAccountName undefined undefined))-}]

--
