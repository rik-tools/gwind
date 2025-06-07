--
module GWind.BillingAccount.ConstructorIT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.BillingAccount.Constructor ({-revisionOutGoerM-})

--
    testList :: Test
    testList = TestList (
        revisionOutGoerMCases)

-- revisionOutGoerM :: IO OutGoer
    revisionOutGoerMCases :: [Test]
    revisionOutGoerMCases = [{-
        TestCase (assertEqual
            "should return revisionOutGoerM"
            undefined
            =<< revisionOutGoerM )-}]

--
