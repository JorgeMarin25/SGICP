class UserSessionsController < ApplicationController  
  skip_before_filter :require_login, except: [:destroy] 
  
  def new 
	@user = User.new 
  end 
 
	def create 
		if @user = login(params[:email], params[:password])  
			redirect_back_or_to(:users, notice: 'Conectado') 
		else 
			flash.now[:alert] = 'Por Favor Loguese'  
			render action: 'new' 
		end 
	end 
 
	def destroy 
	logout 
	redirect_to(root_url, notice: 'Desconectado!') 
	end 
 
end