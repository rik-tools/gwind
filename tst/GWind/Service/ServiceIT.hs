--
module GWind.Service.ServiceIT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.Service.Service ({-revisionServicesM, creationCodeM, deletionCodesM-})

--
    testList :: Test
    testList = TestList (
        revisionServicesMCases
        ++ creationCodeMCases
        ++ deletionCodesMCases)

-- revisionServicesM :: ProjectId -> IO [Service]
    revisionServicesMCases :: [Test]
    revisionServicesMCases = [{-
        TestCase (assertEqual
            "should return revisionServicesM"
            undefined
            =<< revisionServicesM undefined)-}]

-- creationCodeM :: ProjectId -> [ServiceId] -> IO Code
    creationCodeMCases :: [Test]
    creationCodeMCases = [{-
        TestCase (assertEqual
            "should return creationCodeM"
            undefined
            =<< creationCodeM undefined undefined)-}]

-- deletionCodesM :: ProjectId -> [ServiceId] -> IO Code
    deletionCodesMCases :: [Test]
    deletionCodesMCases = [{-
        TestCase (assertEqual
            "should return deletionCodesM"
            undefined
            =<< deletionCodesM undefined undefined)-}]

--
