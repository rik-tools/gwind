-- ⚠
module GWind.Service.Control (reviseServicesM, createServicesM, deleteServicesM)
where

    import GWind.Project.Domain (ProjectSnake)
    import GWind.Service.Domain (ServiceNicks)

--
    reviseServicesM :: ProjectSnake -> IO ()
    reviseServicesM _ =
        undefined

--
    createServicesM :: ProjectSnake -> ServiceNicks -> IO ()
    createServicesM _ _ =
        undefined

--
    deleteServicesM :: ProjectSnake -> ServiceNicks -> IO ()
    deleteServicesM _ _ =
        undefined

--
