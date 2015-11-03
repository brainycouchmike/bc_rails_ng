# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

pages = Page.create([{
  page_handle: '',
  html_title:  'Home Page - Brainy Couch Studios',
  page_title:  'Welcome to Brainy Couch Studios',
  page_data: [{'%': 'p','class': 'paper','content': 'This is the default page for the Brainy Couch Studios Rails Angular project.'}],
  page_default: true,
  group_id: 1
}])