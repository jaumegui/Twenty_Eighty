class UsersController < ApplicationController
  def index
    @users = User.all
    @users = policy_scope(User).order(created_at: :desc)
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    authorize @user
  end

  def new
    @user = User.new
    %w[Entreprenariat Management Communication Developpement-Personnel Leadership Innovation Tech Stratégie].freeze
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
    @expertises = %w[Entreprenariat Management Communication Developpement-Personnel Leadership Innovation Tech Stratégie].freeze
    authorize @user
  end

  def update
    @user = User.find(params[:id])
    authorize @user
    @user.update(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    authorize @user
    @user.destroy
    redirect_to users_path
  end

  def add_project
    @user = User.find(params[:id])
    authorize @user

  end

  private

  def user_params
    params.require(:user).permit(:name, :expertise, :email, :password, :password_confirmation, :access_level, :photo)
  end
end
