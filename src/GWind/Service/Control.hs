--
module GWind.Service.Control (reviseServicesM, createServicesM, deleteServicesM)
where

    import GWind.Project.Domain (ProjectSnake)
    import GWind.Service.Domain (ServiceNicks)
    import GWind.Project.Mutator (projectId)
    import GWind.Service.Mutator (serviceIds)
    import GWind.Service.Service (revisionServicesM, creationCodeM, deletionCodesM)
    import GWind.Common.Presenter (presentingM)

--
    reviseServicesM :: ProjectSnake -> IO ()
    reviseServicesM projectSnake =
        let pid = projectId projectSnake
        in revisionServicesM pid
            >>= presentingM

--
    createServicesM :: ProjectSnake -> ServiceNicks -> IO ()
    createServicesM projectSnake serviceNicks =
        let
            pid = projectId projectSnake
            sis = serviceIds serviceNicks
        in creationCodeM pid sis
            >>= presentingM

--
    deleteServicesM :: ProjectSnake -> ServiceNicks -> IO ()
    deleteServicesM projectSnake serviceNicks =
        let
            pid = projectId projectSnake
            sis = serviceIds serviceNicks
        in deletionCodesM pid sis
            >>= presentingM

--
