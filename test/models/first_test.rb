require 'test_helper'
class FirstTest < ActiveSupport::TestCase
    test "Primeiro teste" do
        var = "Leo"

        assert_equal "Leo", var
    end 
end