--
module GWind.Service.Mutator (serviceIds)
where

    import Data.List.Split (splitOn)
    import GWind.Service.Domain (ServiceNicks, ServiceId)

--
    serviceIds :: ServiceNicks -> [ServiceId]
    serviceIds serviceNicks =
        (map suffixed . splitOn ":") serviceNicks

    suffixed :: String -> ServiceId
    suffixed serviceNick = serviceNick ++ ".googleapis.com"

--
