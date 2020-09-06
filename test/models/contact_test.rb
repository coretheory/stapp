require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  
  test "contact attributes, except for company, must not be empty" do
  	contact = Contact.new

  	assert contact.invalid?
  	assert contact.errors[:first_name].any?
  	assert contact.errors[:last_name].any?
  	assert contact.errors[:email].any?
  	assert contact.errors[:message].any?
  end

  test "company length must not be greater than 50" do
  	contact = Contact.new(first_name: "Mark",
										  		last_name:  "Thayer",
										  		email: 			"random@anotherrandomemail.com",
										  		message: 		"This is my message testing the company length.")
  	contact.company = "Core Theory and enough other characters to go over "
  	assert contact.invalid?

  	contact.company = "Core Theory, Inc."
  	assert contact.valid?

  	contact.company = ""
  	assert contact.valid?
  end

  test "message length must be greater than or equal to 20" do
  	contact = Contact.new(first_name: "Mark",
										  		last_name:  "Thayer",
										  		email: 			"super@anothersuperrandomemail.com",
										  		company:    "Core Theory, Inc.")
  	contact.message = "Hi there"
  	assert contact.invalid?

  	contact.message = ""
  	assert contact.invalid?

  	contact.message = "This is a valid note"
  	assert contact.valid?
  end

end
