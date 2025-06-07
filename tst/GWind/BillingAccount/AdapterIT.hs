--
module GWind.BillingAccount.AdapterIT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.BillingAccount.Adapter ({-revimentBillingAccountsM-})

--
    testList :: Test
    testList = TestList (
        revimentBillingAccountsMCases)

-- revimentBillingAccountsM :: InComer -> IO [BillingAccount]
    revimentBillingAccountsMCases :: [Test]
    revimentBillingAccountsMCases = [{-
        TestCase (assertEqual
            "should return revimentBillingAccountsM"
            undefined
            =<< revimentBillingAccountsM undefined)-}]

--
