class UserController < ApplicationController

  def index
  end

  def new
    @user = User.new
  end

  def show
  end

  def create
    @user = User.new(post_params)
    @user.role = "new_user"
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
  end

  def update
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

  def destroy
    if @user.destroy
      flash[:notice] = "Successfully deleted User."
      redirect_to user_index_path
    end
  end

  def update_role role
    @user.role = role
    @user.save
  end

  def post_params
    params.require(:user).permit(:role)
  end
end
