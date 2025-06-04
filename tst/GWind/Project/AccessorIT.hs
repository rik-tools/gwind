--
module GWind.Project.AccessorIT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.Project.Accessor ({-lifecycleStateMM-})

--
    testList :: Test
    testList = TestList (
        lifecycleStateMMCases)

-- lifecycleStateMM :: ProjectId -> [Project] -> IO (Maybe LifecycleState)
    lifecycleStateMMCases :: [Test]
    lifecycleStateMMCases = [{-
        TestCase (assertEqual
            "should return lifecycleStateMM"
            undefined
            =<< lifecycleStateMM undefined undefined)-}]

--
