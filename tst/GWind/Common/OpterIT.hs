--
module GWind.Common.OpterIT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.Common.Opter ({-optionsM-})

--
    testList :: Test
    testList = TestList (
        optionsMCases)

-- optionsM :: [(Text, [Text])] -> String -> IO Options
    optionsMCases :: [Test]
    optionsMCases = [{-
        TestCase (assertEqual
            "should return optionsM"
            undefined
            =<< optionsM undefined undefined)-}]

--
