# Translations on Rails

# 1)  Use TDD to write a method that can translate a number (1,2,3,...1000000) into Spanish.

class Fixnum

	def to_spanish
		
		names_as_array = %w(cero uno dos tres cuatro cinco seis siete ocho nueve diez once doce trece catorce quince dieciseis diecisiete dieciocho diecinueve veinte veintiuno veintidos veintitres veinticuatro veinticinco veintiseis veintisiete veintiocho veintinueve)


			if self == 30

				"treinta"

			else

				names_as_array[self]

			end	


	end

end