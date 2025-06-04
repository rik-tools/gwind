--
module GWind.Project.Adapter (revimentProjectsM, creamentCodeM, delementCodeM, undelementCodeM)
where

    import Data.Aeson (decode)
    import GWind.Common.Domain (Code)
    import GWind.Common.Transport (InComer, body, code)
    import GWind.Project.Response (Project, Projects, projects)

--
    revimentProjectsM :: InComer -> IO [Project]
    revimentProjectsM inComer =
        case code inComer of
            200 -> case decode (body inComer) :: Maybe Projects of
                Just it -> return (projects it)
                Nothing -> return []
            _ -> error ("failed to revise projects, inComer: " ++ show inComer)

--
    creamentCodeM :: InComer -> IO Code
    creamentCodeM inComer =
        case code inComer of
            201 -> return (code inComer)
            _   -> error ("failed to create project, inComer: " ++ show inComer)

--
    delementCodeM :: InComer -> IO Code
    delementCodeM inComer =
        case code inComer of
            200 -> return (code inComer)
            _   -> error ("failed to delete projects, inComer: " ++ show inComer)

--
    undelementCodeM :: InComer -> IO Code
    undelementCodeM inComer =
        case code inComer of
            200 -> return (code inComer)
            _   -> error ("failed to undelete project, inComer: " ++ show inComer)

--
