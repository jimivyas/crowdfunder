class DonateController < ApplicationController
  before_filter :ensure_logged_in, only: [:create, :destroy]
  before_filter :load_project

	def show
	  @donate = Donate.find(params[:id])
	 end

	def create
		@donate = Donate.projects.build(project_params)
		@donate.user = current_user
	  			respond_to do |format|
	  		if @review.save #can we put .submit or .donate here?
	  			format.html {redirect_to projects_path, notice: 'Thanks for donating!' }
	  			format.js {} # will look for create.js.erb - need to make it
	  		else
	  			format.html { render 'projects/show', alert: 'your money is unwanted' }
	  			format.js {} #lookning for same create.js
	  		end
	  	end
	end

	def destroy
		@donate = Review.find(params[:id])
		@donate.destroy
	end

private

#will fill out later
end

