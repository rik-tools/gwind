--
module GWind.Common.TransportUT (testList)
where

    import Test.HUnit (Test ({-TestCase,-} TestList){-, assertEqual-})
    import GWind.Common.Transport ({-inComer, outGoer-})

--
    testList :: Test
    testList = TestList (
        inComerCases
        ++ outGoerCases)

-- inComer :: (Int, ByteString) -> InComer
    inComerCases :: [Test]
    inComerCases = [{-
        TestCase (assertEqual
            "should return inComer"
            undefined
            (inComer undefined))-}]

-- outGoer :: ToJSON preJSON => URL -> [Param] -> preJSON -> OutGoer
    outGoerCases :: [Test]
    outGoerCases = [{-
        TestCase (assertEqual
            "should return outGoer"
            undefined
            (outGoer undefined undefined True))-}]

--
