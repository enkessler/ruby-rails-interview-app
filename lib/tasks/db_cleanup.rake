namespace 'db' do

  task :consolidate_users => :environment do
    all_users = User.all.to_a
    # Assuming case insensitive email addresses
    unique_users = all_users.uniq { |user| user.email.downcase }


    # Note: Will need a more performant algorithm for detecting duplicates if having a large 
    # number of duplicate users becomes likely

    duplicate_users = []

    unique_users.each do |user|
      all_users.each do |candidate|
        next if candidate.id == user.id

        duplicate_users << candidate if candidate.email.downcase == user.email.downcase
      end
    end

    # todo - move project assignments of duplicate users over to the remaining user
    duplicate_users.each { |user| user.destroy }
  end

end
