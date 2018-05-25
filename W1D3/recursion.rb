require 'byebug'
def sum_to(num)
  return nil if num < 1
  return 1 if num == 1
  num + sum_to(num - 1)
end

puts "#{sum_to(5)  ==  15}"
puts "#{sum_to(1)  ==  1}"
puts "#{sum_to(9)  ==  45}"
puts "#{sum_to(-8)  ==  nil}"

def add_numbers(arr)
  return arr.first if arr.length <= 1
  arr.shift + add_numbers(arr)
end

puts "add_numbers tests"
puts "#{add_numbers([1,2,3,4]) == 10}"
puts "#{add_numbers([3]) == 3}"
puts "#{add_numbers([-80,34,7]) == -39}"
puts "#{add_numbers([]) == nil}"

def gamma_fnc(num)
  return 1 if num == 1
  return nil if num == 0
  (num - 1) * gamma_fnc(num - 1)
end

puts "expect: gamma_fnc(0)  == nil"
puts " got: #{gamma_fnc(0)}"
puts "#{gamma_fnc(0)  == nil}"
puts " expect: gamma_fnc(1)  == 1"
puts " got: #{gamma_fnc(1)}"
puts "#{gamma_fnc(1)  == 1}"
puts " expect: gamma_fnc(4)  == 6"
puts " got: #{gamma_fnc(4)}"
puts "#{gamma_fnc(4)  == 6}"
puts " expect: gamma_fnc(8)  == 5040"
puts " got: #{gamma_fnc(8)}"
puts "#{gamma_fnc(8)  == 5040}"

def ice_cream_shop(flavors, favorite)
  # debugger
  return false if (flavors.first != favorite && flavors.length < 1)
  return true if flavors.shift == favorite
  ice_cream_shop(flavors, favorite)
  return false if (flavors.length == 0)
  # debugger
  true
end

puts "expect: ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  == false"
puts "#{ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  == false}"
puts "expect: ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  == true"
puts "#{ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  == true}"
puts "expect: ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  == false"
puts "#{ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  == false}"
puts "expect: ice_cream_shop(['moose tracks'], 'moose tracks')  == true"
puts "#{ice_cream_shop(['moose tracks'], 'moose tracks')  == true}"
puts "expect: ice_cream_shop([], 'honey lavender')  == false"
puts "#{ice_cream_shop([], 'honey lavender')  == false}"
