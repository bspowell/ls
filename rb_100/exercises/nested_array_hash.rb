contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],["jane@email.com", "999 Main st.", "555-123-9999"]]
contact_details = [:email, :address, :phone]
contacts = {"Joe Smith" => {},
  "Jane Smith" => {}
}


contact_data.flatten!
contacts.each do |key, value|
  i = 0
  while i < contact_details.length
    contacts[key][contact_details[i]] = contact_data.shift
    i += 1
  end
end


p contacts

