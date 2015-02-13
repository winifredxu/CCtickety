namespace :faker_tickets_generator do
  desc "Generate 6 tickets"
  task :tickets => :environment do

    User.all.each do |u| 
      2.times do 
        ticket = u.tickets.create(title: Faker::Company.bs, body: Faker::Lorem.sentence(20), status: [false, true].sample)
      end
    end
  end
end
