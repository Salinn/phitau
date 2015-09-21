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
    @user = User.new(user_params)
    generated_password = Devise.friendly_token.first(8)
    @user.user_status = 'potential new member'
    @user.password = generated_password

    UserMailer.delay(run_at: 5.minutes.from_now).welcome_email(@user, generated_password).deliver!
    respond_to do |format|
      if @user.save
        format.html { redirect_to new_users_admin_path, notice: 'You have successfully registered.' }
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
    @search = User.ransack(params[:q])
    @users = @search.result.order(:first_name).page(params[:page]).per_page(30)
  end

  def update
    @user = User.find params[:id]
    respond_to do |format|
      if @user.update(user_update_params)
        format.html { redirect_to :back, notice: 'User was successfully updated.' }
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
      @user.update_attributes(update_user_params(id))
    end
    redirect_to(edit_all_path)
  end

  def potential_new_members
    @search = User.where(user_status: "potential new member").ransack(params[:q])
    @potentials = @search.result
  end

  def subscribe
    if missing_values
      redirect_to edit_user_path, alert: "You are missing either your First/Last name or your Pledge Class"
    else
      list_id = "c318382ea7"
      gb = Gibbon::API.new
      a = gb.lists.subscribe({:id => list_id, :email => {:email => current_user.email},
                              :merge_vars => {
                                  :FNAME => current_user.first_name,
                                  :LNAME => current_user.last_name,
                                  :PCLASS => current_user.pledge_class },
                              :double_optin => false})
      redirect_to edit_user_path, notice: "Thanks for registering for the Gamma Nu's Alumni News Letter!"
    end
  end

  def missing_values
    if current_user.first_name.blank? || current_user.last_name.blank? || current_user.pledge_class.blank?
      return true
    end
    false
  end

  def missing_values_redirect
    if current_user.first_name.nil?
      redirect_to root_path, notice: 'Missing First Name'
    end
    if current_user.last_name.nil?
      redirect_to root_path, notice: 'Missing Last Name'
    end
    if current_user.pledge_class.nil?
      redirect_to root_path, notice: 'Missing Email'
    end
  end

  def destroy
    @user = User.find(params[:id])

    @user.rush_interviews.each do |interview|
      if interview.interview_time
        interview.interview_time.rush_interview_id = nil
        interview.interview_time.save
      end

      interview.destroy
    end

    @user.interview_questionnaires.each do |questionnaire|
      questionnaire.destroy
    end
    @user.destroy
    redirect_to potentials_path, notice: "User deleted."
  end

  def update_user_status user_status
    @user.user_status = user_status
    @user.save
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone_number)
  end

  def user_update_params
    params.require(:user).permit(:first_name, :last_name, :phone_number, :profile_picture, :remote_profile_picture,
                                 :home_town, :state, :big_brother, :major, :pledge_class, :ritual_number_local,
                                 :ritual_number_national, :home_address, :parents_contact_info)
  end

  def update_user_params(id)
    params.require(:user).fetch(id).permit(:first_name, :last_name, :email, :user_status, :confirmed_brother)
  end
end