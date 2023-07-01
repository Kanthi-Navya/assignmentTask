class Api::V1::ThirdPartyController < ApplicationController
  def index
    render json: { message: 'User created successfully'}, status: :ok
  end
end
