module FizzBuzz where

import Data.List (intercalate)

fizzbuzz :: Int -> String
fizzbuzz n
  | esPrimo n = "FizzBuzz!"
  | otherwise = esFizzBuzz n

esPrimo :: Int -> Bool
esPrimo n
  | n <= 1 = False
  | otherwise = not $ any (\x -> n `mod` x == 0) [2 .. esRaiz n]

esFizzBuzz :: Int -> String
esFizzBuzz n
  | n == 0 = "cero"
  | n < 20 = nrosBasicos !! (n-1)
  | n < 100 = let (d, u) = n `divMod` 10
                  decena = if u == 0 then decenas !! (d - 2) else decenas !! (d - 2) ++ " y"
              in decena ++ " " ++ esFizzBuzz u
  | n < 200 = "ciento " ++ esFizzBuzz(n `mod` 100)
  | n==1000 = "mil"
  | n < 1000 = let (c, r) = n `divMod` 100
                   centena = if r == 0 then cientos !! (c - 1) else cientos !! (c - 1) ++ " " ++ esFizzBuzz r
               in centena
  | n < 1000000 = let (m, r) = n `divMod` 1000
                      prefix = if r == 0 then esFizzBuzz m ++ " mil" else esFizzBuzz m ++ " mil " ++ esFizzBuzz r
                  in prefix
  | n == 1000000 = "un millon"
  | otherwise = error "Número no válido"

esRaiz :: Int -> Int
esRaiz = ceiling . sqrt . fromIntegral

nrosBasicos :: [String]
nrosBasicos = ["uno", "dos", "tres", "cuatro", "cinco", "seis", "siete", "ocho", "nueve", "diez", "once", "doce", "trece", "catorce", "quince", "dieciseis", "diecisiete", "dieciocho", "diecinueve"]

decenas :: [String]
decenas = ["veinte", "treinta", "cuarenta", "cincuenta", "sesenta", "setenta", "ochenta", "noventa"]

cientos :: [String]
cientos = ["cien", "doscientos", "trescientos", "cuatrocientos", "quinientos", "seiscientos", "setecientos", "ochocientos", "novecientos"]
