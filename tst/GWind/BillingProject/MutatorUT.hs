--
module GWind.BillingProject.MutatorUT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.BillingProject.Mutator ({-billingAccountDisplayName-})

--
    testList :: Test
    testList = TestList (
        billingAccountDisplayNameCases)

-- billingAccountDisplayName :: BillingSnake -> BillingAccountDisplayName
    billingAccountDisplayNameCases :: [Test]
    billingAccountDisplayNameCases = [{-
        TestCase (assertEqual
            "should return billingAccountDisplayName"
            undefined
            (billingAccountDisplayName undefined))-}]

--
