--
module GWind.Service.Service (revisionServicesM, creationCodeM, deletionCodesM)
where

    import GWind.Common.Domain (Code)
    import GWind.Project.Domain (ProjectId)
    import GWind.Service.Domain (ServiceId)
    import GWind.Service.Response (Service)
    import GWind.Service.Constructor (revisionOutGoerM, creationOutGoerM, deletionOutGoerM)
    import GWind.Service.Adapter (revimentServicesM, creamentCodeM, delementCodeM)
    import GWind.Common.HTTP (gettingM, postingM)

--
    revisionServicesM :: ProjectId -> IO [Service]
    revisionServicesM projectId =
        revisionOutGoerM projectId
        >>= gettingM
        >>= revimentServicesM

--
    creationCodeM :: ProjectId -> [ServiceId] -> IO Code
    creationCodeM projectId serviceIds =
        creationOutGoerM projectId serviceIds
        >>= postingM
        >>= creamentCodeM

--
    deletionCodesM :: ProjectId -> [ServiceId] -> IO [Code]
    deletionCodesM projectId serviceIds =
        mapM (deletionCodeM projectId) serviceIds

    deletionCodeM :: ProjectId -> ServiceId -> IO Code
    deletionCodeM projectId serviceId =
        deletionOutGoerM projectId serviceId
        >>= postingM
        >>= delementCodeM

--
