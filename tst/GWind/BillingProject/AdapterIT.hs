--
module GWind.BillingProject.AdapterIT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.BillingProject.Adapter ({-revimentBillingProjectsM, creamentCodeM, delementCodeM-})

--
    testList :: Test
    testList = TestList (
        revimentBillingProjectsMCases
        ++ creamentCodeMCases
        ++ delementCodeMCases)

-- revimentBillingProjectsM :: InComer -> IO [BillingProject]
    revimentBillingProjectsMCases :: [Test]
    revimentBillingProjectsMCases = [{-
        TestCase (assertEqual
            "should return revimentBillingProjectsM"
            undefined
            =<< revimentBillingProjectsM undefined)-}]

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
