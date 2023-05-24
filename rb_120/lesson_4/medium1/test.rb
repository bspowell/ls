class Person
  @@dog = 1
	def initialize(name, ssn)
		@name = name
		@ssn = ssn     #"xxxx-xxxx-xxxx"
	end

	def public_ssn
		"The last 4 digits of your ssn are #{ssn}" 
	end
	
	private

	def ssn
		@ssn.split('-').last
	end

end 


bob = Person.new("bob", "1234-5678-9123")
puts bob.public_ssn


puts bob.dog