Admin.create!(
  username: Rails.application.credentials.admin_username,
  password: Rails.application.credentials.admin_password
)

puts 'Admin account was created successfully!'

events = Event.create([{ title: 'The first cool event',
                        description: 'Lorem ipsum dolor sit amet',
                        content: 'orem ipsum dolor sit amet, conc tetu er adipi scing. Praesent vestibuum mol estie lacuiirhs. Aenean non ummy hen.' },
                       { title: 'The first cool event',
                        description: 'Lorem ipsum dolor sit amet',
                        content: 'orem ipsum dolor sit amet, conc tetu er adipi scing. Praesent vestibuum mol estie lacuiirhs. Aenean non ummy hen.' }])
