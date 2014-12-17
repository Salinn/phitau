module ApplicationHelper
  def is_active?(page_name)
    "active" if params[:action] == page_name
  end
  def cp(path)
    "current" if request.url.include?(path)
  end
end

