require 'faker'
require_relative '../app/models/student'

10.times do
  Student.create(name: Faker::Name.name)
end


