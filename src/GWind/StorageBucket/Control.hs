--
module GWind.StorageBucket.Control (reviseStorageBucketsM, createStorageBucketM, deleteStorageBucketM)
where

    import GWind.Project.Domain (ProjectSnake)
    import GWind.Project.Mutator (projectId)
    import GWind.StorageBucket.Mutator (storageBucketId)
    import GWind.StorageBucket.Service (revisionStorageBucketsM, creationCodeM, deletionCodeM)
    import GWind.Common.Presenter (presentingM)

--
    reviseStorageBucketsM :: ProjectSnake -> IO ()
    reviseStorageBucketsM projectSnake =
        let pid = projectId projectSnake
        in revisionStorageBucketsM pid
            >>= presentingM

--
    createStorageBucketM :: ProjectSnake -> IO ()
    createStorageBucketM projectSnake =
        let
            pid = projectId projectSnake
            sid = storageBucketId projectSnake
        in creationCodeM pid sid
            >>= presentingM

--
    deleteStorageBucketM :: ProjectSnake -> IO ()
    deleteStorageBucketM projectSnake =
        let sid = storageBucketId projectSnake
        in deletionCodeM sid
            >>= presentingM

--
