module CommunityServicesHelper
  def total_hours(user)
    total = 0
    user.community_services.each do |cs|
      next if cs.hours_volunteered.nil?
      total += cs.hours_volunteered
    end
    total
  end
end
