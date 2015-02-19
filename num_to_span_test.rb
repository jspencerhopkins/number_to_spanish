












require 'minitest/autorun'
require './num_to_span'

class TestNumToSpan < MiniTest::Unit::TestCase

	def test_to_spanish_translates_zero_to_cer
		assert_equal "cero", 0.to_spanish 
	end

	



end