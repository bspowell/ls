def select_fruit(hash)
  new_hash = {}
  hash_keys = hash.keys
  count = 0
  loop do
    current_key = hash_keys[count]
    if hash[current_key] == 'Fruit'
      new_hash[current_key] = hash[current_key]
    end
    count += 1
    break if count == hash_keys.size
  end
  new_hash
end


produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}


