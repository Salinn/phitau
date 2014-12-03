class UsersController < ApplicationController
  load_and_authorize_resource

  def index
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(post_params)
    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def edit_all
    @users = User.find(:all)
  end

  def update
    if @user.role.nil?
      @user.role = "requesting"
    end
    @user = User.find params[:id]
    respond_to do |format|
      if @user.update(post_params)
        format.html { redirect_to root_path, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def update_all
    params['user'].keys.each do |id|
      @user = User.find(id.to_i)
      @user.update_attributes(user_params(id))
    end
    redirect_to(root_path)
  end

  def destroy
    if @user.destroy
      flash[:notice] = "Successfully deleted User."
      redirect_to root_path
    end
  end

  def update_role role
    @user.role = role
    @user.save
  end

  def post_params
    params.require(:user).permit(:role, :first_name, :last_name, :profile_picture, :remote_profile_picture_url,
                                 :phone_number, :home_town, :state, :big_brother, :major, :pledge_class)
  end
  def user_params(id)
    params.require(:user).fetch(id).permit(:role)
  end
end