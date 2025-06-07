--
module GWind.StorageBucket.Service (revisionStorageBucketsM, creationCodeM, deletionCodeM)
where

    import GWind.Common.Domain (Code)
    import GWind.Project.Domain (ProjectId)
    import GWind.StorageBucket.Domain (StorageBucketId)
    import GWind.StorageBucket.Response (StorageBucket)
    import GWind.StorageBucket.Constructor (revisionOutGoerM, creationOutGoerM, deletionOutGoerM)
    import GWind.StorageBucket.Adapter (revimentStorageBucketsM, creamentCodeM, delementCodeM)
    import GWind.Common.HTTP (gettingM, postingM, deletingM)

--
    revisionStorageBucketsM :: ProjectId -> IO [StorageBucket]
    revisionStorageBucketsM projectId =
        revisionOutGoerM projectId
        >>= gettingM
        >>= revimentStorageBucketsM

--
    creationCodeM :: ProjectId -> StorageBucketId -> IO Code
    creationCodeM projectId storageBucketId =
        creationOutGoerM projectId storageBucketId
        >>= postingM
        >>= creamentCodeM

--
    deletionCodeM :: StorageBucketId -> IO Code
    deletionCodeM storageBucketId =
        deletionOutGoerM storageBucketId
        >>= deletingM
        >>= delementCodeM

--
