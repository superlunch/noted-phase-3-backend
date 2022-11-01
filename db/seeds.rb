puts "Seeding data..."

Project.destroy_all
User.destroy_all

puts "Seeding users..."

User.create(id: 1, username: "ifortun0", password: "1234", email: "ifortun0@gmail.com", bio: "some girl")
User.create(id: 2, username: "ozman", password: "1234", email: "ozman@gmail.com", bio: "Coolest cat")
User.create(id: 3, username: "benjilevi", password: "1234", email: "pianoman420@gmail.com", bio: "Orangest cat!")
User.create(id: 4, username: "rsaurat1", password: "1234", email: "rsaurat@hotmail.com", bio: "some guy")


puts "Seeding projects..."

Project.create(id: 1, title: "Home")
Project.create(id: 2, title: "Work")
Project.create(id: 3, title: "Etc.")
Project.create(id: 4, title: "Secret")


puts "Seeding notes..."

Note.create(id: 1, title: "DO NOT SHOW", body: "Pellentesque vel porta enim. Etiam dignissim vehicula ligula id maximus. Pellentesque massa nunc, feugiat sed semper non, feugiat in ex. Curabitur vel pretium ante. Morbi auctor pretium gravida. Curabitur quis lacus neque. Curabitur rutrum, lacus eu lacinia tempus, nibh dui auctor quam, eleifend placerat orci arcu sagittis nunc. Donec tristique tristique erat at sagittis.", project_id: 4, user_id: 2)
Note.create(id: 2, title: "idea???", body: "Maecenas vel odio sagittis, porttitor velit id, lobortis felis.", project_id: 3, user_id: 1)
Note.create(id: 3, title: "Don't forget:", body: "Buy cat food!!!", project_id: 1, user_id: 4)
Note.create(id: 4, title: "Notes from today", body: "Cras rhoncus, ex eget egestas vestibulum, purus tellus blandit elit, et aliquam est libero in tellus. Nunc tristique porta eleifend. Integer feugiat vehicula eleifend. Duis eu diam quis mi pellentesque volutpat eget nec tellus. Pellentesque laoreet nisi urna, ut molestie mauris dapibus sit amet. Nulla venenatis neque quis augue vulputate cursus.", project_id: 2, user_id: 3)
Note.create(id: 5, title: "Ancient tomes", body: "Ut luctus, risus sit amet vulputate condimentum, magna felis lobortis lacus, vitae iaculis nisl arcu sed enim. Donec congue facilisis nibh, vitae iaculis dui vulputate at.", project_id: 4, user_id: 2)


puts "Done seeding!"