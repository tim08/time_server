# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "csv"

parsed_file = CSV.foreach('cities15000.txt', { :col_sep => "\t", quote_char: "\x00"})

parsed_file.each do |e|
  City.create(name: e[2], time_zone: e[17])
end

