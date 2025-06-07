--
module GWind.BillingAccount.ServiceIT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.BillingAccount.Service ({-revisionBillingAccountsM-})

--
    testList :: Test
    testList = TestList (
        revisionBillingAccountsMCases)

-- revisionBillingAccountsM :: IO [BillingAccount]
    revisionBillingAccountsMCases :: [Test]
    revisionBillingAccountsMCases = [{-
        TestCase (assertEqual
            "should return revisionBillingAccountsM"
            undefined
            =<< revisionBillingAccountsM )-}]

--
