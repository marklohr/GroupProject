task create_employers: :environment do
  puts "HEllo"
  10.times do
    Employer.create!({
      name: Faker::Company.name,
      photo: Faker::Company.logo,
      bio: Faker::Lorem.paragraph(10),
      industry: Faker::Commerce.department,
      size: Faker::Number.number(4),
      date_founded: Faker::Date.backward(150),
      email: Faker::Internet.email,
      postings: [
        Posting.create!({
          job_title: "#{Faker::Name.title}",
          city: Faker::Address.city,
          state: Faker::Address.state,
          job_post_date: Faker::Date.backward(50),
          job_description: Faker::Lorem.paragraph(15),
          job_requirement: Faker::Lorem.sentence(8, true)
        })
      ]
    })
  end
end