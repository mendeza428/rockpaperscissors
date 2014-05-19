require 'pry'

RSpec.configure do |config|
  config.before(:each) do
    RPS.instance_variable_set(:@__db_instance, nil)
  end
end
