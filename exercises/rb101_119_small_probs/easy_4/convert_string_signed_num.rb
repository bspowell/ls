require 'pry'
INTEGERS = {
  "0" => 0,
  "1" => 1,
  "2" => 2,
  "3" => 3,
  "4" => 4,
  "5" => 5,
  "6" => 6,
  "7" => 7,
  "8" => 8,
  "9" => 9
}

def string_to_signed_integer(string)
  new_string = string.split('').reverse
  if new_string.last == '-' || new_string.last == '+'
    operator = new_string.pop
  end
  
  new_num = 0
  new_string.length.times do |num|
    new_char = INTEGERS[new_string[num]] * (10**num)
    new_num += new_char
  end
  
  operator == '-' ? new_num -= new_num * 2 : new_num
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100