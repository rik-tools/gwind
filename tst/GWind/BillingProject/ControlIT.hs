--
module GWind.BillingProject.ControlIT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.BillingProject.Control ({-reviseBillingProjectsM, createBillingProjectM, deleteBillingProjectM-})

--
    testList :: Test
    testList = TestList (
        reviseBillingProjectsMCases
        ++ createBillingProjectMCases
        ++ deleteBillingProjectMCases)

-- reviseBillingProjectsM :: BillingSnake -> IO ()
    reviseBillingProjectsMCases :: [Test]
    reviseBillingProjectsMCases = [{-
        TestCase (assertEqual
            "should return reviseBillingProjectsM"
            undefined
            =<< reviseBillingProjectsM undefined)-}]

-- createBillingProjectM :: ProjectSnake -> BillingSnake -> IO ()
    createBillingProjectMCases :: [Test]
    createBillingProjectMCases = [{-
        TestCase (assertEqual
            "should return createBillingProjectM"
            undefined
            =<< createBillingProjectM undefined undefined)-}]

-- deleteBillingProjectM :: ProjectSnake -> IO ()
    deleteBillingProjectMCases :: [Test]
    deleteBillingProjectMCases = [{-
        TestCase (assertEqual
            "should return deleteBillingProjectM"
            undefined
            =<< deleteBillingProjectM undefined)-}]

--
