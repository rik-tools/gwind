--
module GWind.BillingAccount.ControlIT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.BillingAccount.Control ({-reviseBillingAccountsM-})

--
    testList :: Test
    testList = TestList (
        reviseBillingAccountsMCases)

-- reviseBillingAccountsM :: IO ()
    reviseBillingAccountsMCases :: [Test]
    reviseBillingAccountsMCases = [{-
        TestCase (assertEqual
            "should return reviseBillingAccountsM"
            undefined
            =<< reviseBillingAccountsM )-}]

--
