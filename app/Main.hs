---
-- $ gwind revise projects
-- $ gwind revise service-accounts <project-snake>
-- $ gwind revise service-account-keys <project-snake> <service-snake>
-- $ gwind revise iam-policy <project-snake>
-- $ gwind revise billing-accounts
-- $ gwind revise billing-projects <billing-snake>
-- $ gwind revise services <project-snake>
-- $ gwind revise storage-buckets <project-snake>
--
-- $ gwind create project <project-snake>
-- $ gwind create service-account <project-snake> <service-snake>
-- $ gwind create service-account-key <project-snake> <service-snake>
-- $ gwind create iam-policy-binding <project-snake> <service-snake>
-- $ gwind create billing-project <project-snake> <billing-snake>
-- $ gwind create services <project-snake> <service-nicks>
-- $ gwind create storage-bucket <project-snake>
--
-- $ gwind delete project <project-snake>
-- $ gwind delete service-account <project-snake> <service-snake>
-- $ gwind delete service-account-key <project-snake> <service-snake>
-- $ gwind delete iam-policy-binding <project-snake> <service-snake>
-- $ gwind delete iam-policy <project-snake>
-- $ gwind delete billing-project <project-snake>
-- $ gwind delete services <project-snake> <service-nicks>
-- $ gwind delete storage-bucket <project-snake>
--
-- $ source <(gwind --completion)
-- $ gwind --version
-- $ gwind --how
---

module Main (main)
where

    import System.Exiter (exit)
    import System.Environment (getArgs)
    import Strings (how, version, completion)
    import GWind.Project.Control (reviseProjectsM, createProjectM, deleteProjectM)
    import GWind.ServiceAccount.Control (reviseServiceAccountsM, createServiceAccountM, deleteServiceAccountM)
    import GWind.ServiceAccountKey.Control (reviseServiceAccountKeysM, createServiceAccountKeyM, deleteServiceAccountKeyM)
    import GWind.IAMPolicy.Control (reviseIAMPolicyM, createIAMPolicyBindingM, deleteIAMPolicyBindingM, deleteIAMPolicyM)
    import GWind.BillingAccount.Control (reviseBillingAccountsM)
    import GWind.BillingProject.Control (reviseBillingProjectsM, createBillingProjectM, deleteBillingProjectM)
    import GWind.Service.Control (reviseServicesM, createServicesM, deleteServicesM)
    import GWind.StorageBucket.Control (reviseStorageBucketsM, createStorageBucketM, deleteStorageBucketM)

    main :: IO ()
    main = getArgs >>= processing

    processing :: [String] -> IO ()
    processing arguments =
        case arguments of
            [] -> exit 1 "missing verb"
            --
            "--how"       : _ -> putStrLn how
            "--version"   : _ -> putStrLn version
            "--completion": _ -> putStrLn completion
            --
            "revise" : [] -> exit  2 "missing noun"
            "create" : [] -> exit  3 "missing noun"
            "delete" : [] -> exit  4 "missing noun"
            --
            "revise": "service-accounts"    : []    -> exit  5 "missing <project-snake>"
            "revise": "service-account-keys": []    -> exit  6 "missing <project-snake> <service-snake>"
            "revise": "iam-policy"          : []    -> exit  7 "missing <project-snake>"
            "revise": "billing-projects"    : []    -> exit  8 "missing <billing-snake>"
            "revise": "services"            : []    -> exit  9 "missing <project-snake>"
            "revise": "storage-buckets"     : []    -> exit 10 "missing <project-snake>"
            "revise": "service-account-keys": _: [] -> exit 11 "missing <service-snake>"
            "revise": "projects"            : _                             -> reviseProjectsM
            "revise": "service-accounts"    : projectSnake: _               -> reviseServiceAccountsM projectSnake
            "revise": "service-account-keys": projectSnake: serviceSnake: _ -> reviseServiceAccountKeysM projectSnake serviceSnake
            "revise": "iam-policy"          : projectSnake: _               -> reviseIAMPolicyM projectSnake
            "revise": "billing-accounts"    : _                             -> reviseBillingAccountsM
            "revise": "billing-projects"    : billingSnake: _               -> reviseBillingProjectsM billingSnake
            "revise": "services"            : projectSnake: _               -> reviseServicesM projectSnake
            "revise": "storage-buckets"     : projectSnake: _               -> reviseStorageBucketsM projectSnake
            "revise": noun: _ -> exit 12 ("unknown noun: " ++ noun)
            --
            "create": "project"            : []    -> exit 13 "missing <project-snake>"
            "create": "service-account"    : []    -> exit 14 "missing <project-snake> <service-snake>"
            "create": "service-account-key": []    -> exit 15 "missing <project-snake> <service-snake>"
            "create": "iam-policy-binding" : []    -> exit 16 "missing <project-snake> <service-snake>"
            "create": "billing-project"    : []    -> exit 17 "missing <project-snake> <billing-snake>"
            "create": "services"           : []    -> exit 18 "missing <project-snake> <service-nicks>"
            "create": "storage-bucket"     : []    -> exit 19 "missing <project-snake>"
            "create": "service-account"    : _: [] -> exit 20 "missing <service-snake>"
            "create": "service-account-key": _: [] -> exit 21 "missing <service-snake>"
            "create": "iam-policy-binding" : _: [] -> exit 22 "missing <service-snake>"
            "create": "billing-project"    : _: [] -> exit 23 "missing <billing-snake>"
            "create": "services"           : _: [] -> exit 24 "missing <service-nicks>"
            "create": "project"            : projectSnake: _               -> createProjectM projectSnake
            "create": "service-account"    : projectSnake: serviceSnake: _ -> createServiceAccountM projectSnake serviceSnake
            "create": "service-account-key": projectSnake: serviceSnake: _ -> createServiceAccountKeyM projectSnake serviceSnake
            "create": "iam-policy-binding" : projectSnake: serviceSnake: _ -> createIAMPolicyBindingM projectSnake serviceSnake
            "create": "billing-project"    : projectSnake: billingSnake: _ -> createBillingProjectM projectSnake billingSnake
            "create": "services"           : projectSnake: serviceNicks: _ -> createServicesM projectSnake serviceNicks
            "create": "storage-bucket"     : projectSnake: _               -> createStorageBucketM projectSnake
            "create": noun: _ -> exit 25 ("unknown noun: " ++ noun)
            --
            "delete": "project"            : []    -> exit 26 "missing <project-snake>"
            "delete": "service-account"    : []    -> exit 27 "missing <project-snake> <service-snake>"
            "delete": "service-account-key": []    -> exit 28 "missing <project-snake> <service-snake>"
            "delete": "iam-policy-binding" : []    -> exit 29 "missing <project-snake> <service-snake>"
            "delete": "iam-policy"         : []    -> exit 30 "missing <project-snake>"
            "delete": "billing-project"    : []    -> exit 31 "missing <project-snake> <billing-snake>"
            "delete": "services"           : []    -> exit 32 "missing <project-snake> <service-nicks>"
            "delete": "storage-bucket"     : []    -> exit 33 "missing <project-snake>"
            "delete": "service-account"    : _: [] -> exit 34 "missing <service-snake>"
            "delete": "service-account-key": _: [] -> exit 35 "missing <service-snake>"
            "delete": "iam-policy-binding" : _: [] -> exit 36 "missing <service-snake>"
            "delete": "services"           : _: [] -> exit 37 "missing <service-nicks>"
            "delete": "project"            : projectSnake: _               -> deleteProjectM projectSnake
            "delete": "service-account"    : projectSnake: serviceSnake: _ -> deleteServiceAccountM projectSnake serviceSnake
            "delete": "service-account-key": projectSnake: serviceSnake: _ -> deleteServiceAccountKeyM projectSnake serviceSnake
            "delete": "iam-policy-binding" : projectSnake: serviceSnake: _ -> deleteIAMPolicyBindingM projectSnake serviceSnake
            "delete": "iam-policy"         : projectSnake: _               -> deleteIAMPolicyM projectSnake
            "delete": "billing-project"    : projectSnake: _               -> deleteBillingProjectM projectSnake
            "delete": "services"           : projectSnake: serviceNicks: _ -> deleteServicesM projectSnake serviceNicks
            "delete": "storage-bucket"     : projectSnake: _               -> deleteStorageBucketM projectSnake
            "delete": noun: _ -> exit 38 ("unknown noun: " ++ noun)
            --
            _ -> exit 39 "unknown verb"

--
