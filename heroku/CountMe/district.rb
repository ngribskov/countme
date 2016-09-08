require 'politician.rb'

a = Politician.new
puts "First Name"
a.name_f = gets.strip.chomp
puts "Last Name"
a.name_l = gets.strip.chomp
puts "Address"
a.address = gets.strip.chomp
puts "City"
a.city = gets.strip.chomp
puts "State"
a.state = gets.strip.chomp
puts "Zip"
a.zip = gets.strip.chomp
puts "Picture"
a.picture = gets.strip.chomp
puts "website"
a.website = gets.strip.chomp
puts "District"
a.district = gets.strip.chomp
puts a
save = puts "Save?"
if save.strip.chomp == 'yes'
  a.save
end
