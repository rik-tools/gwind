--
module GWind.Service.ControlIT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.Service.Control ({-reviseServicesM, createServicesM, deleteServicesM-})

--
    testList :: Test
    testList = TestList (
        reviseServicesMCases
        ++ createServicesMCases
        ++ deleteServicesMCases)

-- reviseServicesM :: ProjectSnake -> IO ()
    reviseServicesMCases :: [Test]
    reviseServicesMCases = [{-
        TestCase (assertEqual
            "should return reviseServicesM"
            undefined
            =<< reviseServicesM undefined)-}]

-- createServicesM :: ProjectSnake -> ServiceNicks -> IO ()
    createServicesMCases :: [Test]
    createServicesMCases = [{-
        TestCase (assertEqual
            "should return createServicesM"
            undefined
            =<< createServicesM undefined undefined)-}]

-- deleteServicesM :: ProjectSnake -> ServiceNicks -> IO ()
    deleteServicesMCases :: [Test]
    deleteServicesMCases = [{-
        TestCase (assertEqual
            "should return deleteServicesM"
            undefined
            =<< deleteServicesM undefined undefined)-}]

--
