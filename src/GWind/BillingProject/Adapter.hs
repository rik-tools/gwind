--
module GWind.BillingProject.Adapter (revimentBillingProjectsM, creamentCodeM, delementCodeM)
where

    import Data.Aeson (decode)
    import GWind.Common.Domain (Code)
    import GWind.Common.Transport (InComer, body, code)
    import GWind.BillingProject.Response (BillingProject, BillingProjects, projectBillingInfo)

--
    revimentBillingProjectsM :: InComer -> IO [BillingProject]
    revimentBillingProjectsM inComer =
        case code inComer of
            200 -> case decode (body inComer) :: Maybe BillingProjects of
                Just it -> return (projectBillingInfo it)
                Nothing -> return []
            _ -> error ("failed to revise billing projects, inComer: " ++ show inComer)

--
    creamentCodeM :: InComer -> IO Code
    creamentCodeM inComer =
        case code inComer of
            200 -> return (code inComer)
            _   -> error ("failed to create billing project, inComer: " ++ show inComer)

--
    delementCodeM :: InComer -> IO Code
    delementCodeM inComer =
        case code inComer of
            200 -> return (code inComer)
            _   -> error ("failed to delete billing project, inComer: " ++ show inComer)

--
