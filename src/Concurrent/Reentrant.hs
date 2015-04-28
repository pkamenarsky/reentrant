{-# LANGUAGE ExistentialQuantification, DeriveFunctor, FlexibleContexts, ScopedTypeVariables, TemplateHaskell #-}

module Concurrent.Reentrant where

import Control.Monad.Free
import Control.Monad.Free.TH

data Reentrant a b = IO (a -> IO b)
                   | Done
  deriving Functor

type ReentrantF a = Free (Reentrant a)
