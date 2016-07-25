@states = {
  OR: 'Oregon',
  FL: 'Florida',
  CA: 'California',
  NY: 'New York',
  MI: 'Michigan'
}

#Task 1
#Insert two additional states into the Hash, but without modifying the initial Hash definition. Instead, add in these new kv pairs after the states object is defined.

@states[:AK] = "Alaska"
@states[:ID] = "Idaho"

#Task 2
#Declare another hash called cities where the keys are again the state code but the values are arrays of city names.
#Add a few (2 to 4) cities for each state.

@cities = {
  OR: ["Gresham","Beaverton","Springfield","Tigard"],
  FL: ["Fort Lauderdale","Dogtown","Clearwater","Two Egg"],
  CA: ["Burnt Ranch","Los Angeles","Hayfork","Hat Creek"],
  NY: ["Buffalo","Hicksville","Buffalo","Yonkers"],
  MI: ["Nirvanna","Paradise","Hell","Empire"],
  AK: ["Dead Horse","Mary's Igloo","Anchorage","Chicken"],
  ID: ["Beer Bottle Crossing","Boise","Meridian","Eagle"],
}

#Task 4
#Declare another Hash called taxes which is responsible for defining taxes for each of the states (eg: 7.5 for 7.5%). You can just make up the values... though I cannot guarantee that the US Gov't will not come after you for misrepresenting their tax information.

@taxes = {
  OR: 20,
  FL: 18,
  CA: 17,
  NY: 6,
  MI: 9,
  AK: 14,
  ID: 23

}


 
#Task 3
#Define a method describe_state that:
#Takes as input a state code (eg: 'CA')
#Returns the details of that state, including a list of its cities (eg: 'CA is for California. It has 2 major cities: San Francisco, LA')
#Tips:
#The method should return the string, not output it
#Write test code to output the return value to make sure it works, like we have done with previous exercises
#Write the code incrementally:
#Write the empty method
#Write the test code after the method definition, that will actually be doing the puts of the method's return value.
#Implement a small part of the method instead of trying to have it return the final string. Eg: 'CA' is for California' only.
#Add more functionality and test code

 def describe_state(state)
  puts "#{state} is for #{@states[state]}. it has #{@cities[state].size}\
  cities : #{get_cities(state)}" 
end

def list_of_states
  @states.each {|s,sn| puts "#{s}"}
end
 
def get_cities(state)
  array_of_cities_for_state = @cities[state]
  array_of_cities_for_state.join(" ,")
end
 

# Task 5
# Define another method called calculate_tax which:
# Takes as input the state code as well as a dollar amount (eg: 123.49)
# Determines the tax rate to use based on the provided state
# Calculates the tax amount based on that rate
# Returns the tax amount rounded to 2 decimal places (eg: 44.53)
# Refer to the same tips as Task 3
def calculate_tax(state, dollar)
  tax_rate = @taxes[state] * dollar/100
   
end
 
def find_state_for_city(city)
   statecode=''
   @cities.each do |state, cityvalue|
      cityvalue.each do |mycity|
        if mycity==city
          statecode=state
        end
      end
   end
   puts "the state code is #{statecode}"
end
 
def get_state(city)
  @cities.map{|s, c| puts "#{c}"}
end
 
puts "Which state are you visiting?" 
list_of_states
puts "Choose a state."
prompt = gets.chomp.to_sym.upcase
if @states.include?(prompt)
  describe_state(prompt)
  end
#Find states

 
# Task 4
# Declare another Hash called taxes which is responsible for defining taxes for each of the states (eg: 7.5 for 7.5%). You can just make up the values... though I cannot guarantee that the US Gov't will not come after you for misrepresenting their tax information.
puts "How much you got to party?"
dollar = gets.chomp.to_f
puts "Your #{dollar} is taxed at\
 #{(calculate_tax(prompt, dollar)*1000/dollar).to_i}%\
 unfortuanatly you will have to pay #{calculate_tax(prompt, dollar)} in taxes"
 
 
puts "Pick a city to find out where it is?"
city_prompt = gets.chomp
find_state_for_city(city_prompt)
#City Details