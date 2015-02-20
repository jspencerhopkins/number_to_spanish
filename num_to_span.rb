# Translations on Rails

# 1)  Use TDD to write a method that can translate a number (1,2,3,...1000000) into Spanish.

class Fixnum

	def to_spanish
		
		names_as_array = %w(cero uno dos tres cuatro cinco seis siete ocho nueve diez once doce trece catorce quince dieciseis diecisiete dieciocho diecinueve veinte veintiuno veintidos veintitres veinticuatro veinticinco veintiseis veintisiete veintiocho veintinueve)


			if self > 29

				tens_names = %w(blank blank blank treinta cuarenta cincuenta sesenta setenta ochenta noventa)

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

end