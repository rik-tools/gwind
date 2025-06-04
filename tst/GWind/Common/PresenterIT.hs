--
module GWind.Common.PresenterIT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.Common.Presenter ({-presentingM-})

--
    testList :: Test
    testList = TestList (
        presentingMCases)

-- presentingM :: ToJSON preJSON => preJSON -> IO ()
    presentingMCases :: [Test]
    presentingMCases = [{-
        TestCase (assertEqual
            "should return presentingM"
            undefined
            =<< presentingM undefined)-}]

--
