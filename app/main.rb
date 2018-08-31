require 'active_record'
require_relative './models/profile'

def db_configuration
   db_configuration_file = File.join(File.expand_path('..', __FILE__), '..', 'db', 'config.yml')
   YAML.load(File.read(db_configuration_file))
end

ActiveRecord::Base.establish_connection(db_configuration["development"])

profile = Profile.new(name: 'Nic')
profile.save!

puts(profile.name)
