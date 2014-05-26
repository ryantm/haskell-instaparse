{-# LANGUAGE UnicodeSyntax #-}
import Data.Map (Map)
import Data.Set (Set)

main = putStrLn "Hi"

type Node = Integer
type Label = String
data Descriptor = Descriptor Label Node Integer
data UDescriptor = UDescriptor Label Node Integer
data PDescriptor = PDescriptor Node Integer

data State = State { nodes ∷ [Node]
                   , node_label ∷ Map Node Label
                   , node_children ∷ Map Node [Node]
                   , r ∷ [Descriptor]
                   , u ∷ [Set UDescriptor]
                   , u0 ∷ Node
                   , p ∷ Set PDescriptor
                   }
