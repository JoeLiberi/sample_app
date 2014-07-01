require 'rubygems'
require 'spork'
require 'capybara/rspec'

#uncomment the following line to use spork with the debugger
#require 'spork/ext/ruby-debug'

Spork.prefork do

	RSpec.configure do |config|

	  config.include Capybara::DSL

	end
end

Spork.each_run do
  # This code will be run each time you run your specs.

end
