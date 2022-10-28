puts "Seeding data..."

Project.destroy_all
User.destroy_all

puts "Seeding users..."

4.times do
    User.create(
        username: "test", 
        password: "test", 
        email: "test@example.com", 
        bio: "giving up on faker")
    end

puts "Seeding projects..."

Project.create(title: "My notes 8/18")
Project.create(title: "Thoughts on...")
Project.create(title: "Ephemera, etc.")
Project.create(title: "Draft for Tuesday")


puts "Seeding notes..."

4.times do
    Note.create(
        title: "giving up on faker",
        body: "test",
        project_id: "test",
        user_id: "test")
    end


puts "Done seeding!"