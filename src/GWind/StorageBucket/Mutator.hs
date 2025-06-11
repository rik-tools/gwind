--
module GWind.StorageBucket.Mutator (storageBucketId)
where

    import GWind.Common.Mutator (kebab)
    import GWind.Project.Domain (ProjectSnake)
    import GWind.StorageBucket.Domain (StorageBucketId)

--
    storageBucketId :: ProjectSnake -> StorageBucketId
    storageBucketId projectSnake =
        kebab projectSnake ++ "-state"

--
