# contacts = [
#   { name: "Pete Agoun", phone: "653-1234", email: "pete@GDOE.com" },
#   { name: "Bob Cruz",   phone: "929-9876", email: "bob@GDOE.com" }
#   {name: "James Palau", phone: "565-6711", email: "ja,es@palau.net"}
#   { name: "Matthew Cruz", phone: "734-9999", email: "mangilaosfinest@guam.net"}
# ]

# def display_menu
#   puts "\nAddress Book Menu:"
#   puts "1. Add a contact"
#   puts "2. View all contacts"
#   puts "3. Search for a contact"
#   puts "4. Exit"
#   print "Enter your choice: "
# end
#  display_menu
# choice = gets.chomp.to_i
#   if choice == 1
#     ---- ADD A CONTACT ----
#     TODO: Prompt for name (string)
#     TODO: Prompt for phone (string)
#     TODO: Prompt for email (string)
#     TODO: Create a contact hash with keys :name, :phone, :email
#     TODO: Push the new contact hash into the 'contacts' array
#     TODO: Print "Contact added."
    
#     elsif choice == 2
#     print "VIEW ALL CONTACTS"
#     TODO: If 'contacts' is empty, print "No contacts found."
#     TODO: Otherwise, loop through 'contacts' and print each contact:[
#           Name: 
#           Phone:
#           Email: 
#     ]
#     elsif choice == 3
#     ---- SEARCH FOR A CONTACT ----
#     TODO: Ask the user for a name to search
#     TODO: Find a contact in 'contacts' where contact[:name].downcase == search_name.downcase
#     TODO: If found, print the contacts's details
#     TODO: Otherwise, print "Contact not found."
#     elsif choice == 4
#     puts ---- EXIT ----
#     puts "Goodbye!"
#     break

#   else
#     p ---- INVALID CHOICE ----
#     puts "Invalid choice. Please try again."
#   end
# end

class Contact
  attr_accessor :name, :phone, :email, :address
  
  def initialize(name, phone, email, address)
    @name = name
    @phone = phone
    @email = email
    @address = address
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
    name = gets.chomp.strip
    print "Enter phone number: "
    phone = gets.chomp.strip
    print "Enter email: "
    email = gets.chomp.strip
    print "Enter address: "
    address = gets.chomp.strip
    
    if !name.empty?
      contact = Contact.new(name, phone, email, address)
      @contacts << contact
      puts "✓ Contact '#{name}' added successfully!"
    else
      puts "❌ Name is required. Contact not added."
    end
  end
  
  def view_contacts
    puts "\n--- All Contacts ---"
    if @contacts.empty?
      puts "No contacts found."
      return
    end
    
    @contacts.each_with_index do |contact, index|
      puts "\nContact #{index + 1}:"
      puts contact
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
    search_term = gets.chomp.strip.downcase
    found_contacts = []
    
    @contacts.each do |contact|
      if contact.name.downcase.include?(search_term) || 
         contact.phone.include?(search_term)
        found_contacts << contact
      end
    end
    
    if !found_contacts.empty?
      puts "\nFound #{found_contacts.size} matching contact(s):"
      found_contacts.each_with_index do |contact, index|
        puts "\nMatch #{index + 1}:"
        puts contact
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
  address_book = AddressBook.new
  
  loop do
    display_menu
    print "Enter your choice (1-4): "
    choice = gets.chomp.strip
    
    case choice
    when '1'
      address_book.add_contact
    when '2'
      address_book.view_contacts
    when '3'
      address_book.search_contact
    when '4'
      puts "\nThank you for using the Address Book Application. Goodbye!"
      break
    else
      puts "\n Invalid choice. Please enter a number between 1-4."
    end
    
    print "\nPress Enter to continue..."
    gets
  end
end

main
 
class Contact
  attr_accessor :name, :phone, :email, :address
  
  def initialize(name, phone, email, address)
    @name = name
    @phone = phone
    @email = email
    @address = address
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
    name = gets.chomp.strip
    print "Enter phone number: "
    phone = gets.chomp.strip
    print "Enter email: "
    email = gets.chomp.strip
    print "Enter address: "
    address = gets.chomp.strip
    
    if !name.empty?
      contact = Contact.new(name, phone, email, address)
      @contacts << contact
      puts "✓ Contact '#{name}' added successfully!"
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
    
    @contacts.each_with_index do |contact, index|
      puts "\nContact #{index + 1}:"
      puts contact
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
    search_term = gets.chomp.strip.downcase
    found_contacts = []
    
    @contacts.each do |contact|
      if contact.name.downcase.include?(search_term) || 
         contact.phone.include?(search_term)
        found_contacts << contact
      end
    end
    
    if !found_contacts.empty?
      puts "\nFound #{found_contacts.size} matching contact(s):"
      found_contacts.each_with_index do |contact, index|
        puts "\nMatch #{index + 1}:"
        puts contact
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
  address_book = AddressBook.new
  
  loop do
    display_menu
    print "Enter your choice (1-4): "
    choice = gets.chomp.strip
    
    case choice
    when '1'
      address_book.add_contact
    when '2'
      address_book.view_contacts
    when '3'
      address_book.search_contact
    when '4'
      puts "\nThank you for using the Address Book Application. Goodbye!"
      break
    else
      puts "\n Invalid choice. Please enter a number between 1-4."
    end
    
    print "\nPress Enter to continue..."
    gets
  end
end

main










