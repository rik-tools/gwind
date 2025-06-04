--
module GWind.ServiceAccountKey.AdapterIT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.ServiceAccountKey.Adapter ({-revimentServiceAccountKeysM, creamentCodeM, delementCodeM-})

--
    testList :: Test
    testList = TestList (
        revimentServiceAccountKeysMCases
        ++ creamentCodeMCases
        ++ delementCodeMCases)

-- revimentServiceAccountKeysM :: InComer -> IO [ServiceAccountKey]
    revimentServiceAccountKeysMCases :: [Test]
    revimentServiceAccountKeysMCases = [{-
        TestCase (assertEqual
            "should return revimentServiceAccountKeysM"
            undefined
            =<< revimentServiceAccountKeysM undefined)-}]

-- creamentCodeM :: InComer -> IO Code
    creamentCodeMCases :: [Test]
    creamentCodeMCases = [{-
        TestCase (assertEqual
            "should return creamentCodeM"
            undefined
            =<< creamentCodeM undefined)-}]

-- delementCodeM :: InComer -> IO Code
    delementCodeMCases :: [Test]
    delementCodeMCases = [{-
        TestCase (assertEqual
            "should return delementCodeM"
            undefined
            =<< delementCodeM undefined)-}]

--
