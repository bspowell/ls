=begin

P: 
You have a bank of switches, numbered 1 to n
Each switch is connected to exaclty one light - initially off.
You go down the row of switches and toggle every one of them.
You go back to the beginning, toggle 2, 4, 6, and so on. 
On the third pass, you go back to the beginning, and toggle 3,6,9,...
You repeat and keep going until you have been through n repititions.

Write a method, takes one argument (total number of switches),
returns an Array that identifies which lights are on after n repititions.

input: integer (total number of switches)
output: array (lights on)

Example:
Example with n = 5 lights:

round 1: every light is turned on
round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# 2,4
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# 3,..
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# 4.. 
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
# 5..
The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

Explicit rules
- start with all lights on
- go back to the beginning each time to switch on lights
- return an array with lights swtiched on

Implicit rules:
- lights can only be on or off- binary
- iterations start at 2, and then multiplies of that starting number

D/A
/* given an integer for number of lights */

- create an array from 1-n
- have a counter for where to start
- iterate through the array starting at counter, then each index which are
mulitples of that counter
  - 

  - every counter index after
  - if array[n] contains a number > 0, change to 0
  - if == 0, change to index number + 1
  - add 1 to iterating number 
  - repeate until iterating number == max light number

- create a hash with keys 1 - n and values with default of 1
- iterate through the hash starting with every 2nd number,
  - if hash[1] contains a 1, turn it to a 0 
  - if hash[1] contains a 0, turn it to a 1.
  - add 1 to iterating number
  - repeat until iterating number == max light number
-
=end
require 'pry'

def lightshow(num_lights)
  arr_lights = (1..num_lights).to_a
  stepper = 2
  counter = 1
  
  loop do 
    (counter...num_lights).step(stepper) do |index|
      arr_lights[index] > 0 ? arr_lights[index] = 0 : arr_lights[index] = index + 1
    end
    counter += 1
    stepper += 1
    break if counter > num_lights - 1
  end
  
  arr_lights.select { |lights| lights > 0 }
end
  
p lightshow(5) == [1, 4]
p lightshow(10) == [1, 4, 9]
p lightshow(1000)
