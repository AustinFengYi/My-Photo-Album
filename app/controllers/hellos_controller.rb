class HellosController < ApplicationController
	before_action :set_photo, :only => [:show, :edit, :update,:destroy]
	def index
		@hellos = Hello.all
	end

	def new
		@hello = Hello.new
	end

	def create
		@hello = Hello.new(hello_params)
		if @hello.save

		redirect_to hellos_url
	else
		 render :action => :new
		end
		
	end

	def show
		
		
	end

	def edit
		
		
	end

	def update
		
		if @hello.update_attributes(hello_params)

		redirect_to hellos_path
	    else
	    	render :action => :new
	    end

		
	end

	def destroy
		
		@hello.destroy

		redirect_to hellos_path
		
	end

	def set_photo
		@hello = Hello.find(params[:id])
	end

	private

	def hello_params
		params.require(:hello).permit(:title, :date, :description, :file_location)
		
	end
end
