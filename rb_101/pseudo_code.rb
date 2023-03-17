=begin

#a method that returns the sum of two integers

SET one integer
SET second integer

define method with two parameters passed to it
  SET result to the sum of both parameters
  

PRINT method passing both of the integers 

#a method that takes an array of strings, and returns a string that is all those strings concatenated together

SET an array equal to a bunch of strings

define method that takes array 
  SET interator
  WHILE interator <= size of array
    SET string = string + array at integer
  return string
  
print method(array)


# a method that takes an array of integers, and returns a new array with every other element from the original array, starting with the first element.
START 

define method that takes a parameter
  iterator = 0
  WHILE iterator <= length of array 
    IF integer == 0 or integer % 2 == 0
      SET newarray push array at integer
    ELSE 
      next
    END
  return newarray
  
print method with array of integers

#a method that determines the index of the 3rd occurrence of a given character in a string. For instance, 
if the given character is 'x' and the string is 'axbxcdxex', the method should return 6 (the index of the 3rd 'x'). 
If the given character does not occur at least 3 times, return nil.
every_other([1,4,7,2,5]) # => [1,7,5]

START 
define method that takes two string parameters - one single character and one string 
  SET new_string = oldstring.chars
  WHILE iterator <= new_string.length
    IF character == new_string[interator]
      iterator + 1
      count + 1
      IF count == 3 
        return new_string[iterator]
      
    ELSE
      iterator + 1
  return nil
  
END


#a method that takes two arrays of numbers and returns the result of merging the arrays. 
The elements of the first array should become the elements at the even indexes of the returned array, 
while the elements of the second array should become the elements at the odd indexes. For instance:
merge([1, 2, 3], [4, 5, 6]) # => [1, 4, 2, 5, 3, 6]

START

define mthod that takes two arrays of numbers
SET iterator = 0
SET iterator2 = 0
  WHILE iterator <= array1 
    if iterator == 0 or iterator % 2 == 0
      iterator + 1
      next
    else
      array1.insert(iterator, array2[iterator2])
      iterator + 1
      iterator2 + 1
  return merge array
  
=end