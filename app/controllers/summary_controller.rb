class SummaryController < ApplicationController
	def index
	  @libraries = Library.all 
	end
end
