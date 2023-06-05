=begin
write a method, takes a string argument
returns a new string
which contains original value but 
with staggered capilization

Characters are not letters and should not be changed
but count as characters when switching between upcase and downcase

input: string
output: new string (staggered capitalization)

D/A:
/*given a string*/
create new array
turn string into array with chars
iterate over array with index 
every odd char, if alphanumeric, then capitialize 

=end

def staggered_case(string)
  new_str = ''
  string.chars.each_with_index do |char, ind|
    if char.count("a-zA-Z") > 0 && ind.even? 
      new_str << char.upcase
    else new_str << char.downcase
    end
  end
  p new_str
end


p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'