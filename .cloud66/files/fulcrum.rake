namespace :fulcrum do
  desc "Create a user. A confirmation email will be sent to the user's address."
  task :create_user, [:email, :name, :initials, :password] => :environment do |t, args|
    user = User.create!(
      :email => args.email, :name => args.name, :initials => args.initials,
      :password => args.password, :password_confirmation => args.password
    )
    user.confirm!
  end
end
