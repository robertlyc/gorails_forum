namespace :import do

  desc "Import users form csv"
  task users: :environment do
    filename = File.join Rails.root, "users.csv"
    counter = 0

    CSV.foreach(filename, headers: true) do |row|
      email, first, last = row
      user = User.create(email: email, first_name: first, last_name: last)

      if user.save
        counter += 1
      else
        puts "#{email} - #{user.errors.full_message.join(",")}"
      end
    end

    puts "Imported #{counter} users"
  end
end