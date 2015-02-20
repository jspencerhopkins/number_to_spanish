require 'minitest/autorun'
require './num_to_span'

class TestNumToSpan < MiniTest::Unit::TestCase

	def test_to_spanish_translates_zero_to_cero
		assert_equal "cero", 0.to_spanish 
	end

	def test_to_span_trans_1_to_uno
		assert_equal "uno", 1.to_spanish
	end

	def test_to_span_trans_13_to_trece
		assert_equal "trece", 13.to_spanish
	end

	def test_to_span_trans_19_to_diecinueve
		assert_equal "diecinueve", 19.to_spanish
	end	

	def test_to_span_trans_20_to_viente 
		assert_equal "veinte", 20.to_spanish
	end

	def test_to_span_trans_21_to_vienteuno
		assert_equal "veintiuno", 21.to_spanish
	end

	def test_to_span_trans_29_to_veintinueve
		assert_equal "veintinueve", 29.to_spanish
	end

	def test_to_span_trans_30_to_treinta
		assert_equal "treinta", 30.to_spanish
	end

	def test_to_span_trans_35_to_treinta_y_cinco
		assert_equal "treinta y cinco", 35.to_spanish
	end

	def test_to_span_trans_77_to_setenta_y_siete
		assert_equal "setenta y siete", 77.to_spanish
	end

	def test_to_span_trans_100_to_cien
		assert_equal "cien", 100.to_spanish
	end

	def test_to_span_trans_136_to_cien_treinta_y_seis
		assert_equal "cientos treinta y seis", 136.to_spanish
	end	

	def test_to_span_trans_333_to_tresciento_trienta_y_tres
		assert_equal "trescientos treinta y tres", 333.to_spanish
	end

end