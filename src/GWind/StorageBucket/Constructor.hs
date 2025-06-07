--
module GWind.StorageBucket.Constructor (revisionOutGoerM, creationOutGoerM, deletionOutGoerM)
where

    import Data.Text (pack)
    import GWind.Common.Request (emptyObject)
    import GWind.Common.Transport (OutGoer, outGoer)
    import GWind.Project.Domain (ProjectId)
    import GWind.StorageBucket.Domain (StorageBucketId)
    import GWind.StorageBucket.Request (storageBucketQ)

--
    revisionOutGoerM :: ProjectId -> IO OutGoer
    revisionOutGoerM projectId =
        return (
            outGoer
                "https://storage.googleapis.com/storage/v1/b"
                [(pack "project", [pack projectId])]
                emptyObject)

--
    creationOutGoerM :: ProjectId -> StorageBucketId -> IO OutGoer
    creationOutGoerM projectId storageBucketId =
        return (
            outGoer
               "https://storage.googleapis.com/storage/v1/b"
               [(pack "project", [pack projectId])]
               (storageBucketQ storageBucketId))

--
    deletionOutGoerM :: StorageBucketId -> IO OutGoer
    deletionOutGoerM storageBucketId =
        return (
            outGoer
                ("https://storage.googleapis.com/storage/v1/b/" ++ storageBucketId)
                []
                emptyObject)

--
