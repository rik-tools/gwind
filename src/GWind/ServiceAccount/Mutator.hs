--
module GWind.ServiceAccount.Mutator (serviceAccountId, serviceAccountDisplayName, serviceAccountEmail)
where

    import GWind.Common.Mutator (donut, kebab)
    import GWind.Project.Domain (ProjectSnake)
    import GWind.Project.Mutator (projectId)
    import GWind.ServiceAccount.Domain (ServiceSnake, ServiceAccountId, ServiceAccountDisplayName, ServiceAccountEmail)

--
    serviceAccountId :: ServiceSnake -> ServiceAccountId
    serviceAccountId serviceSnake =
        kebab serviceSnake

--
    serviceAccountDisplayName :: ServiceSnake -> ServiceAccountDisplayName
    serviceAccountDisplayName serviceSnake =
        donut serviceSnake

--
    serviceAccountEmail :: ProjectSnake -> ServiceSnake -> ServiceAccountEmail
    serviceAccountEmail projectSnake serviceSnake =
        serviceAccountId serviceSnake ++ "@" ++ projectId projectSnake ++ ".iam.gserviceaccount.com"

--
