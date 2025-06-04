--
module GWind.Common.MutatorUT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.Common.Mutator ({-kebab, donut-})

--
    testList :: Test
    testList = TestList (
        kebabCases
        ++ donutCases)

-- kebab :: Snake -> Kebab
    kebabCases :: [Test]
    kebabCases = [{-
        TestCase (assertEqual
            "should return kebab"
            "my-name"
            (kebab "My_Name"))-}]

-- donut :: Snake -> Donut
    donutCases :: [Test]
    donutCases = [{-
        TestCase (assertEqual
            "should return donut"
            "My Name"
            (donut "My_Name"))-}]

--
