# Translations on Rails

# 1)  Use TDD to write a method that can translate a number (1,2,3,...1000000) into Spanish.

# 2)  Write a Rails app that can display the numbers and their translations in a list, eg "1 in Spanish is 'uno'". You won't need any model files, just a view and a controller. Put the file you wrote in step 1 into the lib directory in your app so the view template can use the method.

# 3)  Use TDD to write a method that can translate a number into Roman numerals. Put that in the lib directory of your app, and update the view template so it has a two column table, with column headers "Roman Numeral" and "Spanish", and data like "II", "dos".

class Fixnum

	def to_spanish
		
		names_as_array = %w(cero uno dos tres cuatro cinco seis siete ocho nueve diez once doce trece catorce quince dieciséis diecisiete dieciocho diecinueve)

		names_as_array[self]

	end




end