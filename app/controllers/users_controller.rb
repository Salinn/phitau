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
    @user = User.new(user_params_new)
    generated_password = Devise.friendly_token.first(8)
    @user.role = 'potential new member'
    @user.password = generated_password
    # RegistrationMailer.welcome(@user, generated_password).deliver
    respond_to do |format|
      if @user.save
        format.html { redirect_to new_users_admin_path, notice: 'User was successfully created.' }
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
    @users = User.all.order(:first_name).page(params[:page]).per_page(15)
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

  def potential_new_members
    @potentials = User.where(role: "potential new member").page(params[:page]).per_page(15)
  end

  def new_potential_member
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

  def user_params_new
    params.require(:user).permit(:first_name, :last_name, :email,:phone_number)
  end

  def user_params(id)
    params.require(:user).fetch(id).permit(:role, :confirmed_brother)
  end
end