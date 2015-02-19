task create_postings: :environment do
  puts "Hello"
  10.times do
    Posting.create!({
      job_title: "#{Faker::Name.title}",
      city: Faker::Address.city,
      state: Faker::Address.state,
      job_post_date: Faker::Date.backward(50),
      job_description: Faker::Lorem.paragraph(15),
      job_requirement: Faker::Lorem.sentence(8, true)
    })
  end
end