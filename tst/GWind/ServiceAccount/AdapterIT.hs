--
module GWind.ServiceAccount.AdapterIT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.ServiceAccount.Adapter ({-revimentServiceAccountsM, creamentCodeM, delementCodeM-})

--
    testList :: Test
    testList = TestList (
        revimentServiceAccountsMCases
        ++ creamentCodeMCases
        ++ delementCodeMCases)

-- revimentServiceAccountsM :: InComer -> IO [ServiceAccount]
    revimentServiceAccountsMCases :: [Test]
    revimentServiceAccountsMCases = [{-
        TestCase (assertEqual
            "should return revimentServiceAccountsM"
            undefined
            =<< revimentServiceAccountsM undefined)-}]

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
