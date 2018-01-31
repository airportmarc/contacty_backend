# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

json = ActiveSupport::JSON.decode(File.read('C:\Sites\contact_backend\db\iniital_users.json'))

json.each do |a|
  u = User.create!({first_name: a['first_name'], last_name: a['last_name'], email: a['email'], bio: a['bio'],
                    organization: a['organization']})
  c = Contact.create({user:u})
  c.phones.create!({number: a['phone']})
  c.emails.create!({email: a['email']})

end