class ApplicationController < ActionController::Base
    # remove authenticiy
	skip_before_action :verify_authenticity_token, only: [:create, :update]
end
