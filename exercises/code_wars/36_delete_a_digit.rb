def delete_digit(int)
  arr = int.to_s.chars
  new_arr = []
  arr.each_with_index do |ele, index|
    clone_arr = arr.dup
    clone_arr.delete_at(index)
    new_arr << clone_arr
  end
  new_arr.map do |sub_arr|
    sub_arr.join.to_i
  end.max
end