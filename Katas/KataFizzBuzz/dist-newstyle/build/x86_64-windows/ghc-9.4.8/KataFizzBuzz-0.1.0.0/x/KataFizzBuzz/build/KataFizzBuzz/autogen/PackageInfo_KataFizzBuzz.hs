{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -w #-}
module PackageInfo_KataFizzBuzz (
    name,
    version,
    synopsis,
    copyright,
    homepage,
  ) where

import Data.Version (Version(..))
import Prelude

name :: String
name = "KataFizzBuzz"
version :: Version
version = Version [0,1,0,0] []

synopsis :: String
synopsis = "Pruebas Automatizadas para katas"
copyright :: String
copyright = ""
homepage :: String
homepage = "https://github.com/MarianaRodriguezG/ProgramacionLogicalFuncional_devMariana/tree/AutTestingFizzBuzzAndBowlingKatas"
