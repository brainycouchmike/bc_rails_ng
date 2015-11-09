# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

projects = Project.create([{
  project_handle: '/',
  html_title:  'Home Page - Brainy Couch Studios',
  project_title:  'Welcome to Brainy Couch Studios',
  project_data: [{'%': 'p','class': 'paper','content': 'This is the default page for the Brainy Couch Studios Rails Angular project.'}],
  project_default: true,
  group_id: 1
}])