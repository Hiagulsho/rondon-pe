class PagesController < ApplicationController
	
	def index
  		@blog = Blog.all
	end

	def doar

	end

end
