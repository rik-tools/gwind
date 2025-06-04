--
module GWind.Common.AuthIT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.Common.Auth ({-tokenM-})

--
    testList :: Test
    testList = TestList (
        tokenMCases)

-- tokenM :: IO String
    tokenMCases :: [Test]
    tokenMCases = [{-
        TestCase (assertEqual
            "should return tokenM"
            undefined
            =<< tokenM)-}]

--
