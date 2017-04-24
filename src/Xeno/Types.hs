{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DeriveAnyClass #-}

-- | Shared types.

module Xeno.Types where

import Control.DeepSeq
import Control.Exception
import Data.ByteString (ByteString)
import Data.Typeable
import GHC.Generics

data XenoException
  = XenoStringIndexProblem
  | XenoParseError ByteString
  | XenoExpectRootNode
  deriving (Show, Typeable, NFData, Generic)
instance Exception XenoException where displayException = show
