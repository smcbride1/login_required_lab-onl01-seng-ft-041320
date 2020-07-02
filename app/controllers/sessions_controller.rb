class SessionsController < ApplicationController
    def new
    end

    def create
        return redirect_to "/" if !params.has_key?(:name) || params[:name].blank?
        session[:name] = params[:name]
        redirect_to welcome_path
    end

    def welcome
    end

    def destroy
        session.destroy
        redirect_to login_path
    end
end