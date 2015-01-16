module ApplicationHelper
  def title(role)
    return 'President' if role == 'president'
    return '1st VP' if role == 'first_vp'
    return 'VP AR' if role == 'second_vp'
    return 'Treasurer' if role == 'treasurer'
    return 'Sergeant' if role == 'sergeant'
    return 'Chaplain' if role == 'chaplain'

    return 'Recruitment' if role == 'recruitment'
    return 'Alumni Relations' if role == 'alumni_relations'
    return 'Web Master' if role == 'admin'
    return 'Social' if role == 'social'
    return 'Community_service' if role == 'community_service'
    return 'Philanthropy' if role == 'philanthropy'
    return 'House Manager' if role == 'housing_manager'
    return 'Business Ops' if role == 'business_ops'


    "Contact Web Master"
  end
end

