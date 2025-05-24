# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Create a user
first_user = User.find_or_create_by!(name: 'Matee Safi', email: 'matiullahsafibbc@gmail.com') do |user|
  user.password = 'asdfasdf'
  user.password_confirmation = 'asdfasdf'
end

User.find_or_create_by!(name: 'Tameem Sofikheil', email: 'tameem@gmail.com') do |user2|
  user2.password = 'asdfasdf'
  user2.password_confirmation = 'asdfasdf'
end

# Create 5 blogs
5.times do |i|
  Blog.find_or_create_by!(title: "Blog #{i + 1}", content: "This is blog #{i + 1}", author: first_user)
end

# Create 5 courses
5.times do |i|
  Course.find_or_create_by!(name: "Course #{i + 1}", duration: "#{i + 1}")
end

# Create sample academic classes
if AcademicClass.count == 0
  puts "Creating sample academic classes..."
  
  classes = [
    "Mathematics 101", 
    "Introduction to Programming", 
    "Advanced Web Development",
    "Database Systems",
    "Software Engineering",
    "Computer Networks",
    "Mobile App Development",
    "Artificial Intelligence",
    "Data Structures and Algorithms",
    "Operating Systems"
  ]
  
  classes.each do |class_name|
    AcademicClass.create!(name: class_name)
  end
  
  puts "Created #{AcademicClass.count} academic classes!"
end
