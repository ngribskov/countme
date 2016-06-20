require 'csv'
class Politician < ActiveRecord::Base
  has_many :elected_throughs
  has_many :voters, through: :elected_throughs
  def self.generate
    a = Politician.new
    puts "First Name"
    a.name_f = gets.strip
    puts "Last Name"
    a.name_l = gets.strip
    puts "Address"
    a.address = gets.strip
    puts "City"
    a.city = gets.strip
    puts "State"
    a.state = gets.strip
    puts "Zip"
    a.zip = gets.strip
    puts "Picture"
    a.picture = gets.strip
    puts "website"
    a.website = gets.strip
    puts "District"
    a.district = gets.strip
    puts "Job"
    a.job = gets.strip

    puts "#{a.name_f},#{a.name_l},#{a.address},#{a.city},#{a.state},#{a.zip},#{a.picture},#{a.website},#{a.district},#{a.job}"

    puts "Save?"
    confirm = gets.strip
    if confirm == 'yes'
      a.save
    end
  end

  def self.import_csv
    politician_file = CSV.read("politician_input.csv", headers: true)
    politician_file.each do |i|
      a = Politician.new
      a.name_f = i['name_f']
      a.name_l = i['name_l']
      a.address = i['address']
      a.city = i['city']
      a.state = i['state']
      a.zip  = i['zip']
      a.picture = i['picture']
      a.website = i['website']
      a.district = i['district']
      a.job = i['job']
      a.save
    end
  end

end
