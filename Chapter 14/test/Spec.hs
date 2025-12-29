-- Test suite for the counts function
import Counts (counts)
import Test.HUnit

-- Test cases
testEmptyString :: Test
testEmptyString = TestCase $ 
    assertEqual "Empty string should return (0,0)" (0, 0) (counts "")

testSingleWord :: Test
testSingleWord = TestCase $
    assertEqual "Single word 'hello' should return (1,5)" (1, 5) (counts "hello")

testMultipleWords :: Test
testMultipleWords = TestCase $
    assertEqual "'hello world' should return (2,11)" (2, 11) (counts "hello world")

testWithSpaces :: Test
testWithSpaces = TestCase $
    assertEqual "'  hello  world  ' should return (2,15)" (2, 15) (counts "  hello  world  ")

testSpecialCharacters :: Test
testSpecialCharacters = TestCase $
    assertEqual "Special chars should work" (3, 14) (counts "hello, world! test")

-- Test list
tests :: Test
tests = TestList [
    TestLabel "testEmptyString" testEmptyString,
    TestLabel "testSingleWord" testSingleWord,
    TestLabel "testMultipleWords" testMultipleWords,
    TestLabel "testWithSpaces" testWithSpaces,
    TestLabel "testSpecialCharacters" testSpecialCharacters
    ]

main :: IO ()
main = do
    runTestTT tests
    return ()