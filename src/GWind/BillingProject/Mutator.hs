--
module GWind.BillingProject.Mutator (billingAccountDisplayName)
where

    import GWind.BillingProject.Domain (BillingSnake, BillingAccountDisplayName)
    import GWind.Common.Mutator (donut)

--
    billingAccountDisplayName :: BillingSnake -> BillingAccountDisplayName
    billingAccountDisplayName billingSnake =
        (donut billingSnake)

--
