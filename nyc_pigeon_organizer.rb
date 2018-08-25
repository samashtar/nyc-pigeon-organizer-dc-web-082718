

pigeons = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms .K"],
    :white => ["Queenie", "Andrew", "Ms .K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms .K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms .K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

# pigeon_list = {
#   "Theo" => {
#     :color => ["purple", "grey"],
#     :gender => "male",
#     :lives => "Subway"
#   }

pigeons2 = {}

#This is heavily borrowed from Blake's lecture & notes, but refactored a bit.
pigeons.each do |key, hash|
  # <:color => {:purple => ["Theo", "Peter Jr.", "Lucky"],etc}>
  hash.each do |attribute, name_array|
    # <:purple => ["Theo", "Peter Jr.", "Lucky"]>
    # <"Subway" => ["Theo", "Queenie"]>
    name_array.each do |name|
      # <["Theo", "Peter Jr.", "Lucky"]>
      if pigeons2[name].nil?
        pigeons2[name] = {}
        pigeons2[name][:color] = []
      end
      if key == :color
        #for each name in pigeons, if key = :color, shovel the attribute (purple, grey, etc) into the pigeons2 color array
        pigeons2[name][key] << attribute
      else
        #otherwise assign the key(:lives or :gender) to pigeons2 hash and set it equal to the value of that attribute
        #convert attributes to string!!!!! yayyyyyyyyy! 
        pigeons2[name][key] = attribute.to_s
      end
    end
  end
end

ap pigeons2

#Extra NOTES
# #blakes code
# #the first time we go around key will be color
# #2nd time we go around key will be gender
# #3rd time we go around key will be lives
# new_pigeon = {}
# pigeon_data.each do |key, value|
#   # {:purple => ["Theo", "Peter Jr.", "Lucky"],:grey => ["Theo", "Peter Jr.", "Ms .K"],...etc}
#   # }
#   value.each do |attribute, name_array|
#     # attribute => purple, grey
#     # name array => ["Theo", "Peter Jr.", "Lucky"]
#     name_array.each do |name|
#       # "theo"
#       if new_pigeon[name].nil?
#         new_pigeon[name] = {}
#       #puts new_pigeon
#       # new_pigeon = {"theo" => {:color => []}}
#       if new_pigeon[name][:color].nil?
#         new_pigeon[name][:color] = []
#       puts new_pigeon
#       puts ">>>>>"
#       if key == :color
#         new_pigeon[name][key] << attribute
#       else
#         # name => "theo", "key" => gender or lives, "attribute" => "male", female, subway
#         new_pigeon[name][key] = attribute
#       end
#     end
#   end
# end
# puts new_pigeon



# #MY CODE
# #create new hash to store pigeon name as key
# male_pigeon_list = {}
# female_pigeon_list = {}
# pigeon_list = {}
# #collect each pigeon name and insert it as the key of a new hash
# pigeon_data[:gender][:male].each do |key, value|
#   male_pigeon_list[key] = value
# end

# pigeon_data[:gender][:female].each do |key, value|
#   female_pigeon_list[key] = value
# end

# pigeon_list = male_pigeon_list.merge(female_pigeon_list)
# puts pigeon_list

# pigeon_data[:gender].each do |key, array|
#   array.each do |name|
#     pigeon_list[name][:gender] = key
#   end
# end

# puts pigeon_list


# =begin new_value.each do |key, value|
#     value.each do |name|
#       new_pigeon_data[name] = namels
#     end
#   end
# end
# =end

# a hash with three hashes, with keys and values that are arrays 

# Iterate over the hash above collecting each pigeon by name and insert it
# as the key of a new hash where each name holds the attributes for that bird. 
# Your output should match the hash below:

# pigeon_list = {
#   "Theo" => {
#     :color => ["purple", "grey"],
#     :gender => "male",
#     :lives => "Subway"
#   },
#   "Peter Jr." => {
#     :color => ["purple", "grey"],
#     :gender => "male",
#     :lives => "Library"
#   },
#   "Lucky" => {
#     :color => ["purple"],
#     :gender => "male",
#     :lives => "City Hall"
#   },
#   "Ms .K" => {
#     :color => ["grey", "white"],
#     :gender => "female",
#     :lives => "Central Park"
#   },
#   "Queenie" => {
#     :color => ["white", "brown"],
#     :gender => "female",
#     :lives => "Subway"
#   },
#   "Andrew" => {
#     :color => ["white"],
#     :gender => "male",
#     :lives => "Central Park"
#   },
#   "Alex" => {
#     :color => ["white", "brown"],
#     :gender => "male",
#     :lives => "Central Park"
#   }
# }