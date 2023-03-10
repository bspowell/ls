=begin
Add up all of the ages from the Munster family hash:

.values method
.sum method

=end

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

#solution 1
# p ages.values.sum

#solution 2
sum = 0
ages.each do |_, value|
  sum += value
end
p sum