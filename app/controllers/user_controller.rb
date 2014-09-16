class UserController < ApplicationController

  def index
  end

  def new
    @user.role = "user"
  end

  def show
  end

  def create
    @user.role = "Nothing"
    if @user.save
      flash[:notice] = "Successfully created User." 
      redirect_to root_path
    else
      render :action => 'new'
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
