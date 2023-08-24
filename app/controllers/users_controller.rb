class UsersController < ApplicationController
  before_action :set_user, only: [:update]
  def create
    user = User.new(user_params)
    if user.valid?
        user.save
        render json: { message: 'User created successfully'}, status: :created
    else
        render json: { errors: user.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    if @user
      if @user.valid?
        user = @user.update(user_params)

        render json: {message: 'user updated successfully'}, status: :ok
      else
        render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
      end
    else
      render json: {error: 'User Not found'}, status: :not_found
    end
  end

  private
  def set_user
    @user = User.find_by(id: params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name,:last_name,:email,:password)
  end
end
