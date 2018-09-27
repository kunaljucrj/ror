class AdminController < ApplicationController
	def login	
	  	if(session[:username])
        	redirect_to :controller => "admin", :action => "create"
      	end
	end
	
	def create
		if(!session[:username])
			@username = 'admin'
			@password = 'admin'
			@id = params[:username]
			@pass = params[:password]
			if @id!=@username || @pass!=@password
				redirect_to root_path, notice: 'Invalid Username or Password.'
			else
				reset_session
				session[:username] = params[:username]
			    redirect_to admin_index_path, notice: 'Admin Login successful.'
			end
		else
			redirect_to :controller => "admin", :action => "index"
		end
	end
	
	def index
		if(!session[:username])
			redirect_to root_path
		end
		@requests = Request.all              
	end

	def reply
		if(!session[:username])
			redirect_to root_path
		end
	    @request = Request.find(params[:request_id].to_i)
	    @donors = Donor.where(bloodGroup: @request.bloodGroup, city: @request.city)
			.where.not(lastDonateDate: (Time.now.midnight - 180.day)..Time.now.midnight)
			.order(lastDonateDate: :asc).first(@request.noOfDonors)
	    if @donors.size > 0  
	    	@request.serviced = true
	    end
	    @request.save
	end

	def available
        @donors= Donor.where.not(lastDonateDate: (Time.now.midnight - 180.day)..Time.now.midnight)
        .group(:bloodGroup,:city).count
	end

    def logout
      	reset_session
      	redirect_to :controller => "admin", :action => "login"
    end


    def requeststatus
    end

    def checkstatus
    	if params[:email].present?
        	@request = Request.where(email: params[:email])
       	else 
       		redirect_to requeststatus_path, notice: 'Email field cant be empty.'
       	end
    end

end
