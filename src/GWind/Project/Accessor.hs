--
module GWind.Project.Accessor (lifecycleStateMM)
where

    import GWind.Project.Domain (ProjectId, LifecycleState)
    import GWind.Project.Response (Project, lifecycleState, projectId)

--
    lifecycleStateMM :: ProjectId -> [Project] -> IO (Maybe LifecycleState)
    lifecycleStateMM projectId projects =
        let singleton = filter (isProjectId projectId) projects
        in case singleton of
            []          -> return Nothing
            project: [] -> (return . Just . lifecycleState) project
            _           -> error ("nonunique project for " ++ projectId)

    isProjectId :: ProjectId -> Project -> Bool
    isProjectId candidate project = projectId project == candidate

--
