#  lunc_lady.rb

#Description - Lunch Lady: Walk through the cafeteria and order items from the lunch ladys menu. (Bonus Objectives)
# hash

# Lunch Lady Pseudocode:
# Basic Objectives:
#   - user chooses from a list of main dishes
#   - user chooses 2 side dish items
#   - computer repeats users order
#   - computer totals lunch items and displays total
#
# Bonus Objectives:
#   - user can choose as many "add-on" items as they want before getting total
#   - user can clear their choices and start over
#   - user has a wallet total they start with and their choices cannot exceed what they can pay for

# hashes of the main and side dishes available
@food = {food:{
# 1. choose from a list of main dishes

              maindish:{
                      'chicken': '3',
                      'beef': '2',
                      'pork': '4',
                      'veg': '5'
                    },

# 2. choose from 2 side dishes

              sidedish:{
                      'fries': '2',
                      'salad': '1'
                      }
              }
          }


def food_menu


  puts "Here is a list of the main dishes"
  @food[:food][:maindish].each {|food, cost| puts "#{food} $#{cost}"}
  puts "What main dish would you like:"
  maindishchoice = gets.chomp.to_sym

  @food[:food][:sidedish].each {|food, cost| puts "#{food} $#{cost}"}
  puts "What side dish would you like"
  sidedishchoice = gets.chomp.to_sym

  #validselection(maindishchoice, sidedishchoice)

  addmeal(maindishchoice, sidedishchoice)
  puts "Thanks for chooing us."
end

# 3. have the computer repeat the order
# DONE
def addmeal(maindishchoice, sidedishchoice)
  puts "Your meal:"
  puts "#{maindishchoice},#{@food[:food][:maindish][maindishchoice]}"
  puts "#{sidedishchoice},#{@food[:food][:sidedish][sidedishchoice]}"

# 4. computes the total lunch items and adds total
# DONE
  total = @food[:food][:maindish][maindishchoice].to_i + @food[:food][:sidedish][sidedishchoice].to_i
  puts "Your total is = $#{total}."
end

# def validselection (maindishchoice, sidedishchoice)
#   if maindishchoice != @food[:food][:maindish].each.keys
#     puts "invalid 1"
#   elsif sidedishchoice != @food[:food][:sidesish].each.keys
#     puts "invalid 2"
#   else
#     puts "correct"
#     addmeal(maindishchoice, sidedishchoice)
#   end
# end
food_menu
