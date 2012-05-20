class UsersController < ApplicationController 
  
  def new
  end
  
  def destroy
    session[:login_id] = nil
    flash[:notice] = "See You Later"
    redirect_to root_url 
  end

    def create
      user = User.find_by_login(params[:login])

      if user
        if user.password_digest == params[:password]
          session[:login_id] = user
          redirect_to root_url 
        else
          redirect_to "/users/new", notice: "Bad password!"
        end
      else
        redirect_to "/users/new", notice: "Bad login ID!"
      end
    end
end
