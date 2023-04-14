=begin
Write a function that when given a URL as a string, 
parses out just the domain name and returns it as a string. 

Problem:

Input: string
Output: string (domain name)

Rules:
- always need to remove up until // or www.
- always remove anything after domain name starting with .

Examples/Modeling:
domain_name("http://github.com/carbonfive/raygun") == "github" 
domain_name("http://www.zombie-bites.com") == "zombie-bites"
domain_name("https://www.cnet.com") == "cnet"

remove up until // if there
if www. comes next, remove it too. 
keep the next words until the dot
after dot, remove rest of string

Algorithm:
- given a string
- make a case when string includes:
  - https:// - gsub it
  - http:// - gsub it
  - www. - gsub it
- split string at dot
- select only first index


=end

def domain_name(string)
  string.gsub!("http://", "")
  string.gsub!("https://", "")
  string.gsub!("www.", "")
  string.split(".")[0]
end

p domain_name("http://google.com") #== "google"
p domain_name("http://google.co.jp") == "google"
p domain_name("www.xakep.ru") == "xakep"
p domain_name("https://youtube.com") == "youtube"
p domain_name("http://www.codewars.com/kata/") #== "codewars"

