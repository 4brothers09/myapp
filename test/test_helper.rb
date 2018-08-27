ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/enviroment'
require 'rails/test_help'
require "minitest/reporters"
Minitest::Reporters.use!

class ActiveSupport::TestCase
  fixtures :all

   def is_logged_in?
    !session[:user_id].nil?
  end
end
