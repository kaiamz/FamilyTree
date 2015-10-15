require 'active_record'
require '../lib/people'
require 'rspec'



ActiveRecord::Base.establish_connection(YAML::load(File.open('../db/config.yml'))["test"])

# RSpec.configure do |config|
#   config.after(:each) do
#     People.all.each { |people| people.destroy}
#   end
# end
