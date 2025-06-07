--
module GWind.StorageBucket.Adapter (revimentStorageBucketsM, creamentCodeM, delementCodeM)
where

    import Data.Aeson (decode)
    import GWind.Common.Domain (Code)
    import GWind.Common.Transport (InComer, body, code)
    import GWind.StorageBucket.Response (StorageBucket, StorageBuckets, items)

--
    revimentStorageBucketsM :: InComer -> IO [StorageBucket]
    revimentStorageBucketsM inComer =
        case code inComer of
            200 -> case decode (body inComer) :: Maybe StorageBuckets of
                Just it -> return (items it)
                Nothing -> return []
            _ -> error ("failed to revise storage buckets, inComer: " ++ show inComer)

--
    creamentCodeM :: InComer -> IO Code
    creamentCodeM inComer =
        case code inComer of
            200 -> (return (code inComer))
            _   -> error ("failed to create storage bucket, inComer: " ++ show inComer)

--
    delementCodeM :: InComer -> IO Code
    delementCodeM inComer =
        case code inComer of
            204 -> return (code inComer)
            _   -> error ("failed to delete storage bucket, inComer: " ++ show inComer)

--
