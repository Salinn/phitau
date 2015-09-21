module UsersHelper
  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def first_name(user)
    user.first_name? ? user.first_name : 'N/A'
  end

  def last_name(user)
    user.last_name? ? user.last_name : 'N/A'
  end

  def user_name(user)
    first_name(user) + ' ' + last_name(user)
  end

  def email(user)
    user.email? ? user.email : 'N/A'
  end

  def phone_number(user)
    user.phone_number? ? user.phone_number : 'N/A'
  end

  def user_status(user)
    user.user_status? ? user.user_status : 'N/A'
  end

  def ritual_number_local(user)
    user.ritual_number_local ? user.ritual_number_local : 'N/A'
  end

  def ritual_number_national(user)
    user.ritual_number_national? ? user.ritual_number_national : 'N/A'
  end

  def home_address(user)
    user.home_address? ? user.home_address : 'N/A'
  end

  def parents_contact_info(user)
    user.parents_contact_info? ? user.parents_contact_info : 'N/A'
  end

  def major(user)
    user.major if user.major?
  end

  def pledge_class(user)
    user.pledge_class if user.pledge_class?
  end

  def home_town(user)
    user.home_town? ? user.home_town : 'No Hometown listed'
  end

  def home_state(user)
    user.state? ? user.state : 'No State listed'
  end

  def home_town_and_state(user)
    home_town(user) + ', ' + home_state(user)
  end

  def big_brother(user)
    user.big_brother if user.big_brother?
  end

  def current_user?(user)
    current_user && current_user.id == user.id
  end

  def approved_brother?
    current_user && current_user.confirmed_brother?
  end

  def have_permissions?(allowed_positions)
    current_user && current_user.multiple_have_permissions?(allowed_positions)
  end

  def on_mailing_list?(user)
    user.check_mailchimp_list_for_user?
  end

  def profile_picture(user)
    user.profile_picture? ? user.profile_picture_url : 'blank-user.jpg'
  end

  def not_sign_in
    (current_user == nil or current_user.user_status == nil or current_user.user_status == "not_a_member")
  end
end
