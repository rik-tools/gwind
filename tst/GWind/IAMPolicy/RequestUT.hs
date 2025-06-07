--
module GWind.IAMPolicy.RequestUT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.IAMPolicy.Request ({-bindingIntroductionQ, bindingEliminationQ, policyEliminationQ-})

--
    testList :: Test
    testList = TestList (
        bindingIntroductionQCases
        ++ bindingEliminationQCases
        ++ policyEliminationQCases)

-- bindingIntroductionQ :: ServiceAccountEmail -> IAMPolicy -> IAMPolicyQ
    bindingIntroductionQCases :: [Test]
    bindingIntroductionQCases = [{-
        TestCase (assertEqual
            "should return bindingIntroductionQ"
            undefined
            (bindingIntroductionQ undefined undefined))-}]

-- bindingEliminationQ :: ServiceAccountEmail -> IAMPolicy -> IAMPolicyQ
    bindingEliminationQCases :: [Test]
    bindingEliminationQCases = [{-
        TestCase (assertEqual
            "should return bindingEliminationQ"
            undefined
            (bindingEliminationQ undefined undefined))-}]

-- policyEliminationQ :: IAMPolicy -> IAMPolicyQ
    policyEliminationQCases :: [Test]
    policyEliminationQCases = [{-
        TestCase (assertEqual
            "should return policyEliminationQ"
            undefined
            (policyEliminationQ undefined))-}]

--
