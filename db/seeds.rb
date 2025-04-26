admin_company = Company.find_by(name: "Admin company")

if admin_company.nil?
  admin_company = Company.create!(
    name: "Admin company",
    tax_id: "11111212",
    city: "Praha",
    postal_code: "16300",
    phone: "444444444",
    email: "admin@email.com",
    trial_ends_at: Time.now + 30.days
  )
  puts "admin company created"
else
  puts "admin company already exists"
end

user_admin = User.find_by(email: "admin@email.com")
if user_admin.nil?
  User.create!(
    company_id: admin_company.id,
    email: "admin@email.com",
    password: "password123",
    first_name: "Admin",
    last_name: "User",
    position: "Administrator",
    phone: "444555666",
    role: 1,
    active: true,
    confirmed_at: Time.now
  )
  puts "admin user created"
else
  puts "admin user already exists"
end