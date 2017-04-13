# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

jobs = [
  {poster: 'Joel', category: 'waste removal', location: 'Newark', status: 'new'},
  {poster: 'Jim', category: 'moving', location: 'Brooklyn', status: 'pending'},
  {poster: 'James', category: 'painting', location: 'Manhattan', status: 'complete'}
]

jobs.each do |job|
  Job.create(poster: job[:poster], category: job[:category], location: job[:location], status: job[:status])
end