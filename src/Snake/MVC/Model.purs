module Snake.MVC.Model where

import Prelude

import Data.Generic.Rep (class Generic)
import Data.Newtype (class Newtype)
import Data.Show.Generic (genericShow)
import Snake.Board (Board)
import Snake.Data.Direction (Direction)

data Msg
  = Msg_Start
  | Msg_Pause
  | Msg_Resume
  | Msg_Tick
  | Msg_Navigate Direction

data State
  = State_Init
  | State_Playing Game
  | State_Paused Game
  | State_Lost Score
  | State_Won Score
  | State_Error StateError

data StateError = ErrBoardParse String

newtype Game = Game
  { score :: Score
  , board :: Board
  }

type Config = { maxScore :: Int }

newtype Score = Score Int

---

derive instance Newtype Score _

derive instance Generic Game _

derive instance Generic Score _

derive instance Generic StateError _

derive instance Generic State _

derive instance Eq Game

derive instance Eq Score

derive instance Eq StateError

derive instance Eq State

derive instance Ord Score

instance Show Game where
  show = genericShow

instance Show Score where
  show = genericShow

instance Show StateError where
  show = genericShow

instance Show State where
  show = genericShow

derive newtype instance Semiring Score

