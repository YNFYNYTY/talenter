class UsersController < ApplicationController
	# def new
	# 	@user = User.new
	# end

	# def create
 #    token = SecureRandom.urlsafe_base64(24)
 #    @user = User.new(user_params.merge(confirmation_token: token))

 #    if @user.save
 #      set_session(@user)
 #      UserMailer.signup_confirmation(@user).deliver
 #      redirect_to projects_path
 #    else
 #      render 'new'
 #    end
 #  end

 #  def user_params
 #  	params[:user].permit(:email, :password, :password_confirmation)
 #  end


end
