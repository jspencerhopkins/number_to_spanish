# Translations on Rails

# 1)  Use TDD to write a method that can translate a number (1,2,3,...1000000) into Spanish.

class Fixnum

	def to_spanish
		
		names_as_array = %w(cero uno dos tres cuatro cinco seis siete ocho nueve diez once doce trece catorce quince dieciseis diecisiete dieciocho diecinueve veinte veintiuno veintidos veintitres veinticuatro veinticinco veintiseis veintisiete veintiocho veintinueve)

		tens_names = %w(blank blank blank treinta cuarenta cincuenta sesenta setenta ochenta noventa)

		hundreds_names = %w(blank blank doscientos trescientos cuatrocientos quinientos seiscientos setecientos ochocientos novecientos)

		if self > 200
			internal_calculation(100, "cientos")

		elsif self > 100
			tens = (self - 100) / 10
			ones = (self - 100) % 10
			if ones > 0
				"cientos #{tens_names[tens]} y #{ones.to_spanish}"
			else
				tens_names[tens]
			end

		elsif self == 100
			"cien"
		
		elsif self > 29

			tens = self / 10
			ones = self % 10
			if ones > 0
				"#{tens_names[tens]} y #{ones.to_spanish}"
			else
				tens_names[tens]
			end
		else
			names_as_array[self]
		end	
	end

	def internal_calculation(place, name)		
			big_number = self / place
			remainder = self % place
		if remainder > 0
			"#{big_number.to_spanish}#{name} #{remainder.to_spanish}" 
		else
			"#{big_number.to_spanish}#{name}"
		end
	end

end