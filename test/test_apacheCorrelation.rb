require 'helper'

class TestApacheCorrelation < Test::Unit::TestCase

  context "Apache correlation methods" do
    should "calculate covariance having as input two Ruby arrays" do
      result = Apache::Stat::Correlation.covariance([1,2,3,4],[6,5,2,0])
      expected = -3.5
      assert_equal -3.5, result
    end
  end
end