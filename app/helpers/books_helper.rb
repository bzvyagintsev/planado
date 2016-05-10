module BooksHelper
	def current_issuances array
		count = 0
		array.each do |item|
			if item.issuances.current
				item.issuances.current.each do |issuance|
					count = count + 1
				end
			end
		end

		return count
	end

	
end
