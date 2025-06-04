--
module GWind.Project.Control (reviseProjectsM, createProjectM, deleteProjectM)
where

    import GWind.Project.Domain (ProjectSnake)
    import GWind.Project.Mutator (projectId, projectName)
    import GWind.Project.Accessor (lifecycleStateMM)
    import GWind.Project.Service (revisionProjectsM, creationCodeM, deletionCodeM, undeletionCodeM)
    import GWind.Common.Presenter (presentingM)

--
    reviseProjectsM :: IO ()
    reviseProjectsM  =
        revisionProjectsM
        >>= presentingM

--
    createProjectM :: ProjectSnake -> IO ()
    createProjectM projectSnake =
        let
            pid = projectId projectSnake
            pna = projectName projectSnake
        in revisionProjectsM
            >>= lifecycleStateMM pid
            >>= \lsm -> case lsm of
                Nothing                 -> creationCodeM pid pna
                Just "DELETE_REQUESTED" -> undeletionCodeM pid
                Just "ACTIVE"           -> return 200
                Just _                  -> error "never?"
                >>= presentingM

--
    deleteProjectM :: ProjectSnake -> IO ()
    deleteProjectM projectSnake =
        let pid = projectId projectSnake
        in deletionCodeM pid
            >>= presentingM

--
