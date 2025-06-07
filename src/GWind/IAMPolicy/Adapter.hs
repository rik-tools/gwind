--
module GWind.IAMPolicy.Adapter (revimentIAMPolicyM, creamentCodeM, bindingDelementCodeM, policyDelementCodeM)
where

    import Data.Aeson (decode)
    import GWind.Common.Domain (Code)
    import GWind.Common.Transport (InComer, body, code)
    import GWind.IAMPolicy.Response (IAMPolicy (IAMPolicy), bindings, etag, version)

--
    revimentIAMPolicyM :: InComer -> IO IAMPolicy
    revimentIAMPolicyM inComer =
        case code inComer of
            200 -> case decode (body inComer) :: Maybe IAMPolicy of
                Just it -> return it
                Nothing -> return (IAMPolicy {bindings = [], etag = "", version = 0})
            _ -> error ("failed to revise iam policy, inComer: " ++ show inComer)

--
    creamentCodeM :: InComer -> IO Code
    creamentCodeM inComer =
        case code inComer of
            200 -> return (code inComer)
            _   -> error ("failed to create iam policy binding, inComer: " ++ show inComer)

--
    bindingDelementCodeM :: InComer -> IO Code
    bindingDelementCodeM inComer =
        case code inComer of
            200 -> return (code inComer)
            _   -> error ("failed to delete iam policy binding, inComer: " ++ show inComer)

--
    policyDelementCodeM :: InComer -> IO Code
    policyDelementCodeM inComer =
        case code inComer of
            200 -> return (code inComer)
            _   -> error ("failed to delete iam policy, inComer: " ++ show inComer)

--
