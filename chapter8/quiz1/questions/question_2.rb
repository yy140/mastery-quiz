# Write a program that lists the names of people who all like a
# specific thing. It should:
# * Ask the user to input a category - `sport` or `fruit`.
# * Ask the user to input a category value e.g. `kiwi`.
# * `puts` the names of each of the people who like the thing in the
#   category, one per line.
#
# * Example output:
#   ```
#   Enter what category to search
#   sport
#   Enter what value to search for
#   squash
#   Mary
#   Lauren
#   Govind
#   ```
#
# Note: You can assume that, when asked for a category, the user will
# only enter either `sport` or `fruit`.  The user might enter a
# category value that no person has (e.g. `mango`).

people = [
  { "name" => "Mary", "sport" => "squash", "fruit" => "blackberry" },
  { "name" => "Lauren", "sport" => "squash", "fruit" => "orange" },
  { "name" => "Isla", "sport" => "weightlifting", "fruit" => "banana" },
  { "name" => "Sam", "sport" => "cycling", "fruit" => "orange" },
  { "name" => "Govind", "sport" => "squash", "fruit" => "banana" },
  { "name" => "Awad", "sport" => "weightlifting", "fruit" => "kiwi" },
  { "name" => "Will", "sport" => "cycling", "fruit" => "blackberry" }
]

category = gets.chomp
value = gets.chomp

fav_things = {}
people.each do |person|
  sport = person["sport"]
  fruit = person["fruit"]
  
  case category
  when "sport"
    if fav_things[sport] == nil
      fav_things[sport] = []
    end    
    fav_things[sport].push(person["name"])
    
  when "fruit"
    if fav_things[fruit] == nil
      fav_things[fruit] = []    
    end 
    fav_things[fruit].push(person["name"])
  end
end

fav_things.each do |k, v|
  if k == value
    puts v.join("\n")
  end
end
