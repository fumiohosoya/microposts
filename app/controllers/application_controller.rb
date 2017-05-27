class ApplicationController < ActionController
  protect_from_forgery with: :exception
  
  def create
      @user =User.new(user_params)
      if @user.save
      else
        render 'new'
      end
  end
  
  private
  
  def user_params
      params.require(:user).permit(:name, :email, :password, :passwoard_confirmation)
  end      
end
