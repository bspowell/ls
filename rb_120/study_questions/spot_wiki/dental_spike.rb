=begin
There's a dental office called Dental People Inc.

Within this office, there's 2 oral surgeons, 2 orthodontists, 1 general dentist.

Both general dentists and oral surgeons can pull teeth. 

Orthodontists cannot pull teeth.

Orthodontists straighten teeth.

All of these aforementioned specialties are dentists. 

All dentists graduated from dental school.

Oral surgeons place implants.

General dentists fill teeth

=end

class DentalOffice
  def initialize
    @name = "Dental People Inc."
    @dentists = [OralSurgeon.new, OralSurgeon.new, Orthodontist.new, GeneralDentist.new]
  end 
end

class Dentist

  def intialize
    @graduated_school = true
  end

  def pull_teeth
    true
  end

end 

class OralSurgeon < Dentist
  def place_implants
  end 

end

class Orthodontist < Dentist
  def pull_teeth
    false
  end

  def straighten_teeth
  end

end

class GeneralDentist < Dentist
  def fill_teeth
  end
end

