--
module GWind.ServiceAccountKey.Accessor (serviceAccountKeyNamesM)
where

    import GWind.ServiceAccountKey.Domain (ServiceAccountKeyName)
    import GWind.ServiceAccountKey.Response (ServiceAccountKey, keyType, name)

--
    serviceAccountKeyNamesM :: [ServiceAccountKey] -> IO [ServiceAccountKeyName]
    serviceAccountKeyNamesM serviceAccountKeys =
        (return . map name) (filter isUserManaged serviceAccountKeys)

    isUserManaged :: ServiceAccountKey -> Bool
    isUserManaged serviceAccountKey =
        keyType serviceAccountKey == "USER_MANAGED"

--
