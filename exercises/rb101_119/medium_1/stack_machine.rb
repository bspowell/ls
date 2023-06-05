=begin

P: 
Each operation in the language operates on a register, 
which can be thought of as the current value. 
The register is not part of the stack. 
Operations that require two values pop the topmost item from the stack
(that is, the operation removes the most recently pushed value from the stack), 
perform the operation using the popped value and the register value, 
and then store the result back in the register.

D/S:

Write a method that implements a miniature stack-and-register-based programming language,
that has the following commands:

n Place a value n in the "register". Do not modify the stack.
PUSH Push the register value on to the stack. Leave the value in the register.
ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
MOD Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
POP Remove the topmost item from the stack and place in register
PRINT Print the register value

input: string
output: integer

A: 
/* given a string */ 
- Break the string up into an array of words
- Iterate over the array of strings
  - Look for integers and keywords (listed above)
  - If a integer, then assign the register value to integer
  - If a keyword, run keyword instructions 

  

=end

require 'pry'
def stack_machine(string)
  register = 0
  stack = []
  commands = string.split(' ')
  commands.each do |word|
    register = word.to_i if word.to_i < 0
    case word
    when '0'..'9' then register = word.to_i
    when 'PUSH'   then stack.push(register)
    when 'ADD'    then register += stack.pop
    when 'SUB'    then register -= stack.pop
    when 'MULT'   then register *= stack.pop
    when 'DIV'    then register /= stack.pop
    when 'MOD'    then register %= stack.pop
    when 'POP'    then register = stack.pop
    when 'PRINT'  then puts register
   # else              register = word.to_i # from answer
    end
  end
end

stack_machine('-3 PUSH 5 SUB PRINT')

