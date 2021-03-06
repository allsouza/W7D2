class UsersController < ApplicationController
    before_action :ensure_login, only: [:show]

    def new
        @user = User.new
        render :new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            #email
            login!(@user)
            redirect_to bands_url
        else
            flash.now[:errors] = @user.errors.full_messages
            render :new 
        end
    end

    def show
        @user = current_user

        render :show
    end

    private
    def user_params
        params.require(:user).permit(:name, :email, :password)
    end
end