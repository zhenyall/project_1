# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
  name = Faker::Name.unique.split('')
  Author.create(
    {
    	first_name: name.first,
    	last_name: name.last,
    	gender: Faker::Gender.binary_type,
    	birthday: Faker::Date.between(from: '1972-02-02', to: '2001-09-13')
    }

  )
end