class UsersController < ApplicationController
  def index
    @users = User.all
    @users = policy_scope(User).order(created_at: :desc)
  end

  def show
    @user = User.find(params[:id])
    authorize @user
  end

  def new
    @user = User.new
    @expertises = %w[Entreprenariat Management Communication Developpement-Personnel Leadership Innovation Tech Stratégie].freeze
    authorize @user
  end

  def create
    @user = User.new(user_params)
    authorize @user
    if @user.save
      redirect_to users_path
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :expertise, :email, :password, :access_level)
  end
end
