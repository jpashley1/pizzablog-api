require 'csv' 

file = File.join(Rails.root, "db", "recipe_pizza_data.csv")
CSV.foreach(file) do |row|        
  title = row[0]

  ingredients = row[1]

  directions = row[2]

  user_id = row[3]


  Recipe.create(title: title, ingredients: ingredients, directions: directions, user_id: user_id)
end
