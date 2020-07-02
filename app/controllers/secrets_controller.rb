class SecretsController < ApplicationController
    def show
        return redirect_to "/" if !logged_in
    end
end