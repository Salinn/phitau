module CommunityServicesHelper
  def total_hours(user)
    total = 0
    user.community_services.each do |cs|
      total += cs.hours_volunteered
    end
    total
  end
end
