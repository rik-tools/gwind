--
module GWind.IAMPolicy.AdapterIT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.IAMPolicy.Adapter ({-revimentIAMPolicyM, creamentCodeM, bindingDelementCodeM, policyDelementCodeM-})

--
    testList :: Test
    testList = TestList (
        revimentIAMPolicyMCases
        ++ creamentCodeMCases
        ++ bindingDelementCodeMCases
        ++ policyDelementCodeMCases)

-- revimentIAMPolicyM :: InComer -> IO IAMPolicy
    revimentIAMPolicyMCases :: [Test]
    revimentIAMPolicyMCases = [{-
        TestCase (assertEqual
            "should return revimentIAMPolicyM"
            undefined
            =<< revimentIAMPolicyM undefined)-}]

-- creamentCodeM :: InComer -> IO Code
    creamentCodeMCases :: [Test]
    creamentCodeMCases = [{-
        TestCase (assertEqual
            "should return creamentCodeM"
            undefined
            =<< creamentCodeM undefined)-}]

-- bindingDelementCodeM :: InComer -> IO Code
    bindingDelementCodeMCases :: [Test]
    bindingDelementCodeMCases = [{-
        TestCase (assertEqual
            "should return bindingDelementCodeM"
            undefined
            =<< bindingDelementCodeM undefined)-}]

-- policyDelementCodeM :: InComer -> IO Code
    policyDelementCodeMCases :: [Test]
    policyDelementCodeMCases = [{-
        TestCase (assertEqual
            "should return policyDelementCodeM"
            undefined
            =<< policyDelementCodeM undefined)-}]

--
