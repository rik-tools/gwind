-- ⚠
module GWind.IAMPolicy.ControlIT (testList)
where

    import Test.HUnit (Test (TestCase, TestList), assertEqual)
    import GWind.IAMPolicy.Control (reviseIAMPolicyM, createIAMPolicyBindingM, deleteIAMPolicyBindingM, deleteIAMPolicyM)

--
    testList :: Test
    testList = TestList (
        reviseIAMPolicyMCases
        ++ createIAMPolicyBindingMCases
        ++ deleteIAMPolicyBindingMCases
        ++ deleteIAMPolicyMCases)

-- reviseIAMPolicyM :: ProjectSnake -> IO ()
    reviseIAMPolicyMCases :: [Test]
    reviseIAMPolicyMCases = [
        TestCase (assertEqual
            "should return reviseIAMPolicyM"
            undefined
            =<< reviseIAMPolicyM undefined)]

-- createIAMPolicyBindingM :: ProjectSnake -> ServiceSnake -> IO ()
    createIAMPolicyBindingMCases :: [Test]
    createIAMPolicyBindingMCases = [
        TestCase (assertEqual
            "should return createIAMPolicyBindingM"
            undefined
            =<< createIAMPolicyBindingM undefined undefined)]

-- deleteIAMPolicyBindingM :: ProjectSnake -> ServiceSnake -> IO ()
    deleteIAMPolicyBindingMCases :: [Test]
    deleteIAMPolicyBindingMCases = [
        TestCase (assertEqual
            "should return deleteIAMPolicyBindingM"
            undefined
            =<< deleteIAMPolicyBindingM undefined undefined)]

-- deleteIAMPolicyM :: ProjectSnake -> IO ()
    deleteIAMPolicyMCases :: [Test]
    deleteIAMPolicyMCases = [
        TestCase (assertEqual
            "should return deleteIAMPolicyM"
            undefined
            =<< deleteIAMPolicyM undefined)]

--
