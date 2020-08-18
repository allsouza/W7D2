class SessionsController < ApplicationController

    def create
        @user = User.find_by_credentials(params[:session][:email], params[:session][:password])
        if @user
            login!(@user)
            redirect_to bands_url
        else
            flash.now[:errors] = ["Invalid Credentials!"]
            render :new
        end
    end

    def destroy
        logout!
        redirect_to bands_url
    end

    private
    def session_params
        params.require(:session).permit(:email, :password)
    end
end