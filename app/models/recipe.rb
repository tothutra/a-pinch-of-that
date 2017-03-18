class Recipe < ApplicationRecord
  VALID_FOOD_TYPE = [
    "generally edible", 
    "sweet", 
    "savoury"
  ]
  VALID_TIME_TAKEN = [
    "anything goes", 
    "quick and easy", 
    "yummy and ready within the next 2 hours", 
    "I don't care how long it takes"
  ]
  validates :food_type, inclusion: {
    in: VALID_FOOD_TYPE,
    message: "That doesn't sound like food!"
  }
  validates :time_taken, inclusion: {
    in: VALID_TIME_TAKEN,
    message: "Don'try to fool me"
  }
end
