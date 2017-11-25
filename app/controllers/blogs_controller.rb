class BlogsController < ApplicationController

	def blog
		@blog = Blog.all
	end

	def new
    	@blog = Blog.new
  	end


	def create
	    params[:blog]['user_id'] = current_user.id
	    @blog = Blog.create(blog_params)
	    if @blog.save
	      redirect_to root_path
	    end
	 end

	 def blog_params
	    params.require(:blog).permit(:title, :subtitle, :content, :banner, :user_id)
	 end

	 private :blog_params

	 def update
	 end

	 def delete
	 end

end
