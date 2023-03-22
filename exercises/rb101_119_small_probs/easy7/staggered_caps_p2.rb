


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


staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'