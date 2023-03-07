=begin

remove people with age 100 and greater.

#each method



=end

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

#solution 1
ages.each do |key, value|
  if value > 100
    ages.delete(key)
  end
end

#solution 2
ages.select! do |key, value|
  value < 100
end

p ages