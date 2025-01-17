class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def show
    @user = User.find_by(id: params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(name: params[:name] , email: params[:email] , password: params[:password])
    @user.save
    session[:user_id] = @user.id
    redirect_to("/users/index")
  end
  
  def login_form
    
  end
  
  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    redirect_to("/users/index")
    
  end
  
  def login
    @user = User.find_by(email: params[:email], password: params[:password])
    if @user
      session[:user_id] = @user.id
      redirect_to("/")
    end
    
  end
  
  def logout
    session[:user_id] = nil
    redirect_to("/login")
  end
  
end
