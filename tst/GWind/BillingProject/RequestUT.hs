--
module GWind.BillingProject.RequestUT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.BillingProject.Request ({-billingProjectQ-})

--
    testList :: Test
    testList = TestList (
        billingProjectQCases)

-- billingProjectQ :: BillingAccountName -> BillingProjectQ
    billingProjectQCases :: [Test]
    billingProjectQCases = [{-
        TestCase (assertEqual
            "should return billingProjectQ"
            undefined
            (billingProjectQ undefined))-}]

--
