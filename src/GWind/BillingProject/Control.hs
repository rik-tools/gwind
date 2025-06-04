-- ⚠
module GWind.BillingProject.Control (reviseBillingProjectsM, createBillingProjectM, deleteBillingProjectM)
where

    import GWind.Project.Domain (ProjectSnake)
    import GWind.BillingProject.Domain (BillingSnake)

--
    reviseBillingProjectsM :: BillingSnake -> IO ()
    reviseBillingProjectsM _ =
        undefined

--
    createBillingProjectM :: ProjectSnake -> BillingSnake -> IO ()
    createBillingProjectM _ _ =
        undefined

--
    deleteBillingProjectM :: ProjectSnake -> IO ()
    deleteBillingProjectM _ =
        undefined

--
