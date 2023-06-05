
require 'pry'

ALPHA = ('a'..'z').to_a

def change(arg)
  name = arg.split(' ')
  name.map! do |word|
    result = word.chars.map(&:downcase)
    count = 0
    result.each do |letter|
      # binding.pry
      index = ALPHA.find_index(letter)
      next if index == nil 
      index += 13
      index -= 26 if index > 25
      # binding.pry
      newletter = ALPHA[index]
      result[count] = newletter
      count += 1
    end
    result.join.capitalize
  end
  name.join(' ')
end

#find the index of the letter in the alphabet
# add 13 to that index number
# if over 26, minus 26
# replace num with letter at new index from alpha


puts change("Nqn Ybirynpr")
puts change("Tenpr Ubccre")
puts change("Nqryr Tbyqfgvar")
puts change("Nyna Ghevat")
puts change("Puneyrf Onoontr")
puts change("Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv")
puts change("Wbua Ngnanfbss")
puts change("Ybvf Unvog")
puts change("Pynhqr Funaaba")
puts change("Fgrir Wbof")
puts change("Ovyy Tngrf")
puts change("Gvz Orearef-Yrr")
puts change("Fgrir Jbmavnx")
puts change("Xbaenq Mhfr")
puts change("Fve Nagbal Ubner")
puts change("Zneiva Zvafxl")
puts change("Lhxvuveb Zngfhzbgb")
puts change("Unllvz Fybavzfxv")
puts change("Tregehqr Oynapu")