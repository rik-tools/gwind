--
module GWind.BillingProject.AccessorIT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.BillingProject.Accessor ({-billingAccountNameM-})

--
    testList :: Test
    testList = TestList (
        billingAccountNameMCases)

-- billingAccountNameM :: BillingAccountDisplayName -> [BillingAccount] -> IO BillingAccountName
    billingAccountNameMCases :: [Test]
    billingAccountNameMCases = [{-
        TestCase (assertEqual
            "should return billingAccountNameM"
            undefined
            =<< billingAccountNameM undefined undefined)-}]

--
