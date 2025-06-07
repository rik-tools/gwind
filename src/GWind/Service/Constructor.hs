--
module GWind.Service.Constructor (revisionOutGoerM, creationOutGoerM, deletionOutGoerM)
where

    import Data.Text (pack)
    import GWind.Common.Transport (OutGoer, outGoer)
    import GWind.Project.Domain (ProjectId)
    import GWind.Service.Domain (ServiceId)
    import GWind.Service.Request1 (services1)
    import GWind.Service.Request2 (services2)

--
    revisionOutGoerM :: ProjectId -> IO OutGoer
    revisionOutGoerM projectId =
        return (
            outGoer
                ("https://serviceusage.googleapis.com/v1/projects/" ++ projectId ++ "/services")
                [(pack "filter", [pack "state:ENABLED"])]
                ())

--
    creationOutGoerM :: ProjectId -> [ServiceId] -> IO OutGoer
    creationOutGoerM projectId serviceIds =
        return (
            outGoer
                ("https://serviceusage.googleapis.com/v1/projects/" ++ projectId ++ "/services:batchEnable")
                []
                (services1 serviceIds))

--
    deletionOutGoerM :: ProjectId -> ServiceId -> IO OutGoer
    deletionOutGoerM projectId serviceId =
        return (
            outGoer
                ("https://serviceusage.googleapis.com/v1/projects/" ++ projectId ++ "/services/" ++ serviceId ++ ":disable")
                []
                services2)

--
