import qualified Data.Map as Map
import qualified Data.Set as Set

main = 
    -- let m = 2
    --     i = "aa" ++ "$"
    --     p = Set.empty
    --     r = Set.empty
    --     uj = 
        
    putStrLn "Hi"

type Node = Integer
type Label = String
data Descriptor = Descriptor Label Node Integer
data UDescriptor = UDescriptor Label Node Integer
data PDescriptor = PDescriptor Node Integer

data State = State { nodes :: [Node]
                   , node_label :: Map.Map Node Label
                   , node_children :: Map.Map Node [Node]
                   , r :: [Descriptor]
                   , u :: [Set.Set UDescriptor]
                   , u0 :: Node
                   , p :: Set.Set PDescriptor
                   }
