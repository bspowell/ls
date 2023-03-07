=begin 
Modify the hash such that each member of the Munster family has an additional 
"age_group" key that has one of three values describing the age group the family
member is in (kid, adult, or senior). Your solution should produce the hash below

{ "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
  "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
  "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
  "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
  "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }
  
  
input: nested hash
output: nested hash with additional key, value

each_with_index

if munsters[key1][key2] >= 64 
  then add munster[key]["age_group"] = senior
else munsters[key1][key2] >= 18
  then add munster[key]["age_group"] = adult
else
  then add munster[key]["age_group"] = kid
end


=end

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |key_hash1, value|
  if value["age"] >= 64
    value["adult_group"] = "senior"
  elsif value["age"] >= 18
    value["adult_group"] = "adult"
  else
    value["adult_group"] = "kid"
  end
end

p munsters
