module Main where

main :: IO ()
main = putStrLn "H"

data Ingredient = Ingredient
    {}

data MacroNutrients = MacroNutrients {
    Fat 
}

data FoodType = Vegan | Vegeterian | Carnivore
