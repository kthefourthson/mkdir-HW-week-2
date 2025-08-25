class Contact     
  def initialize(input_name, input_phone, input_email, input_address)
    @name = input_name
    @phone = input_phone
    @email = input_email
    @address = input_address
  end
  

  def name
    @name
  end
  
  def phone
    @phone
  end
  
  def email
    @email
  end
  
  def address
    @address
  end
  
  def name=(new_name)
    @name = new_name
  end
  
  def phone=(new_phone)
    @phone = new_phone
  end
  
  def email=(new_email)
    @email = new_email
  end
  
  def address=(new_address)
    @address = new_address
  end
  
  def to_s
    "  Name: #{@name}\n  Phone: #{@phone}\n  Email: #{@email}\n  Address: #{@address}"
  end                         
end

class AddressBook
  def initialize
    @contacts = []
  end
  
  def add_contact
    puts "\n--- Add a New Contact ---"
    print "Enter name: "
    user_name = gets.chomp.strip
    print "Enter phone number: "
    user_phone = gets.chomp.strip
    print "Enter email: "
    user_email = gets.chomp.strip
    print "Enter address: "
    user_address = gets.chomp.strip
    
    if !user_name.empty?
      new_contact = Contact.new(user_name, user_phone, user_email, user_address)
      @contacts << new_contact
      puts "✓ Contact '#{user_name}' added successfully!"
    else
      puts "Name is required. Contact not added."
    end
  end
  
  def view_contacts
    puts "\n--- All Contacts ---"
    if @contacts.empty?
      puts "No contacts found."
      return
    end
    
    @contacts.each_with_index do |each_contact, index|
      puts "\nContact #{index + 1}:"
      puts each_contact
    end
    puts "\nTotal contacts: #{@contacts.size}"
  end
  
  def search_contact
    puts "\n--- Search for a Contact ---"
    if @contacts.empty?
      puts "No contacts to search."
      return
    end
    
    print "Enter name or phone number to search: "
    search_word = gets.chomp.strip.downcase
    found_contacts = []
    
    @contacts.each do |each_contact|
      if each_contact.name.downcase.include?(search_word) || 
         each_contact.phone.include?(search_word)
        found_contacts << each_contact
      end
    end
    
    if !found_contacts.empty?
      puts "\nFound #{found_contacts.size} matching contact(s):"
      found_contacts.each_with_index do |matching_contact, index|
        puts "\nMatch #{index + 1}:"
        puts matching_contact
      end
    else
      puts "No matching contacts found."
    end
  end
end

def display_menu
  puts "\n" + "="*40
  puts "ADDRESS BOOK APPLICATION"
  puts "="*40
  puts "1. Add a contact"
  puts "2. View all contacts"
  puts "3. Search for a contact"
  puts "4. Exit"
  puts "="*40
end

def main
  my_address_book = AddressBook.new
  
  loop do
    display_menu
    print "Enter your choice (1-4): "
    user_choice = gets.chomp.strip
    
    case user_choice
    when '1'
      my_address_book.add_contact
    when '2'
      my_address_book.view_contacts
    when '3'
      my_address_book.search_contact
    when '4'
      puts "\n Goodbye!"
      break
    else
      puts "\n Invalid choice. Please enter a number between 1-4."
    end
    
    print "\nPress Enter to continue..."
    gets
  end
end


main
