module Main where


main :: IO ()
main = putStrLn "H"

calories :: MacroNutrients -> Double
calories macro = fat macro * 9 + proteins macro * 4 + carbohydrates macro * 4

totalFat :: Fats -> Double
totalFat fat = unsaturated fat + monosaturated fat + omega6 fat + lal fat + epa fat + dha fat + otherOmega3 fat

broccoli :: Ingredient
broccoli = Ingredient (MacroNutrients 0.3 2.4 7.2) (MicroNutrients True) Vegan (IngredientName "Broccoli")



data Ingredient = Ingredient MacroNutrients MicroNutrients IngredientType IngredientName

newtype IngredientName = IngredientName String

data Fats = Fats
  { 
    unsaturated :: Double,
    monosaturated :: Double,
    omega6 :: Double,
    lal :: Double,
    epa :: Double,
    dha :: Double,
    otherOmega3 :: Double
  }

data MacroNutrients = MacroNutrients
  {
    fat :: Double,
    proteins :: Double,
    carbohydrates :: Double
  }

newtype MicroNutrients = MicroNutrients
  {
    aLot :: Bool
  }

data IngredientType = Vegan | Vegetarian | Carnivore
