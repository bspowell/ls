=begin

P: Given this data structure, return an array
containing the colors of the fruit, and sizes of vegtables.
The sizes should be uppercase, colors capitialized. 

DS:
hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

return value: [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

input: hash
output: array

A:
/* given a hash */
- iterate over hash to get to elements - use map to return an array of same size
- if type == 'fruit', select color, capitialize it
- if type == 'vegtable', select size, uppercase it

=end

require 'pry'

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

hsh.map do |key, value| 
  if value[:type] == 'fruit'
    value[:colors].map(&:capitalize!)
  else value[:size].upcase
  end
end
