import FizzBuzz
import Test.HUnit

testFizzBuzz :: Test
testFizzBuzz =
  test
    [ "Test fizzbuzz 141141" ~: fizzbuzz 141141 ~?= "ciento cuarenta y un mil ciento cuarenta y uno",
      "Test fizzbuzz 101101" ~: fizzbuzz 101101 ~?= "ciento un mil ciento uno",
      "Test fizzbuzz 21231" ~: fizzbuzz 21231 ~?= "veintiún mil doscientos treinta y uno"
      "Test fizzbuzz 1000000" ~: fizzbuzz 1000000 ~?= "un millon"
      "Test fizzbuzz 121121" ~:
     
    ]

testEsPrimo :: Test
testEsPrimo =
  test
    [ "Test esPrimo 5" ~: esPrimo 5 ~?= True,
      "Test esPrimo 10" ~: esPrimo 10 ~?= False
     
    ]

testEsFizzBuzz :: Test
testEsFizzBuzz =
  test
    []

testEsRaiz :: Test
testEsRaiz =
  test
    []

testNrosBasicos :: Test
testNrosBasicos =
  test
    []

testDecenas :: Test
testDecenas =
  test
    []

testCientos :: Test
testCientos =
  test
    []


main :: IO ()
main = do
  runTestTT (TestList [testFizzBuzz, testEsPrimo, testEsFizzBuzz, testEsRaiz, testNrosBasicos, testDecenas, testCientos])
  return ()
