task create_graduates: :environment do
  puts "HEllo"
  10.times do
    Graduate.create!({
      first_name: "#{Faker::Name.first_name}",
      last_name: "#{Faker::Name.last_name}",
      current_city: Faker::Address.city,
      current_state: Faker::Address.state,
      grad_city: Faker::Address.city,
      grad_state: Faker::Address.state,
      grad_date: Faker::Date.backward(150),
      email: Faker::Internet.email,
      photo: [
          "http://placekitten.com/100/100",
          "http://fillmurray.com/100/100",
          "http://placecage.com/100/100",
          "http://stevensegallery.com/100/100"
        ].sample,
      bio: Faker::Lorem.paragraph(10),
      experiences: [
        Experience.create!({
          company: Faker::Company.name,
          description: Faker::Lorem.paragraph,
          position: Faker::Name.title,
          start_date: Faker::Date.backward(30),
          end_date: Faker::Date.backward(50),
        })
      ],
      links: [
          Link.create!({
            url: Faker::Internet.domain_name,
            description: Faker::Lorem.paragraph,
          })
      ],
      educations: [
          Education.create!({
            school_name: Faker::Company.name,
            degrees: [
              Degree.create!({
                start_date: Faker::Date.backward(30),
                end_date: Faker::Date.backward(50),
                degree_type: [
                  "Associates",
                  "Bachelors",
                  "Masters",
                  "PhD"
                  ].sample,
                concentration: [
                  "Engineering",
                  "History",
                  "Mathematics",
                  "Philosophy",
                  "English"
                  ].sample,
              })
            ]
          })
      ],
      skills: [
          Skill.create!({
            skill: Faker::Company.bs,
          })
      ]
    })
  end
end