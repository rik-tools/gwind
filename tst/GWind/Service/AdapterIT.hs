--
module GWind.Service.AdapterIT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.Service.Adapter ({-revimentServicesM, creamentCodeM, delementCodeM-})

--
    testList :: Test
    testList = TestList (
        revimentServicesMCases
        ++ creamentCodeMCases
        ++ delementCodeMCases)

-- revimentServicesM :: InComer -> IO [Service]
    revimentServicesMCases :: [Test]
    revimentServicesMCases = [{-
        TestCase (assertEqual
            "should return revimentServicesM"
            undefined
            =<< revimentServicesM undefined)-}]

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
