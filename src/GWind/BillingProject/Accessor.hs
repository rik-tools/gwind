--
module GWind.BillingProject.Accessor (billingAccountNameM)
where

    import GWind.BillingAccount.Response (BillingAccount, displayName, name)
    import GWind.BillingProject.Domain (BillingAccountName, BillingAccountDisplayName)

--
    billingAccountNameM :: BillingAccountDisplayName -> [BillingAccount] -> IO BillingAccountName
    billingAccountNameM billingAccountDisplayName billingAccounts =
        case filter (isDisplayName billingAccountDisplayName) billingAccounts of
            []                 -> error ("nonexistent billing account name for: " ++ billingAccountDisplayName)
            billingAccount: [] -> return (name billingAccount)
            _                  -> error ("nonunique billing account name for: " ++ billingAccountDisplayName)

    isDisplayName :: BillingAccountDisplayName -> BillingAccount -> Bool
    isDisplayName billingAccountDisplayName billingAccount =
        displayName billingAccount == billingAccountDisplayName

--
