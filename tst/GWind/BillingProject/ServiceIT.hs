--
module GWind.BillingProject.ServiceIT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.BillingProject.Service ({-revisionBillingProjectsM, creationCodeM, deletionCodeM-})

--
    testList :: Test
    testList = TestList (
        revisionBillingProjectsMCases
        ++ creationCodeMCases
        ++ deletionCodeMCases)

-- revisionBillingProjectsM :: BillingAccountName -> IO [BillingProject]
    revisionBillingProjectsMCases :: [Test]
    revisionBillingProjectsMCases = [{-
        TestCase (assertEqual
            "should return revisionBillingProjectsM"
            undefined
            =<< revisionBillingProjectsM undefined)-}]

-- creationCodeM :: ProjectId -> BillingAccountName -> IO Code
    creationCodeMCases :: [Test]
    creationCodeMCases = [{-
        TestCase (assertEqual
            "should return creationCodeM"
            undefined
            =<< creationCodeM undefined undefined)-}]

-- deletionCodeM :: ProjectId -> IO Code
    deletionCodeMCases :: [Test]
    deletionCodeMCases = [{-
        TestCase (assertEqual
            "should return deletionCodeM"
            undefined
            =<< deletionCodeM undefined)-}]

--
