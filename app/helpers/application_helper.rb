module ApplicationHelper
  def title(role)
    return 'President' if role == 'president'
    return '1st VP' if role == 'first_vp'
    return 'VPAR' if role == 'second_vp'
    return 'Treasurer' if role == 'treasurer'
    return 'Sergeant' if role == 'sergeant'
    return 'Chaplain' if role == 'chaplain'

    role
  end

  def get_link post
    if post.images.empty?
      nil
    else
      post.images.first.picture_url
    end
  end

  def get_img_path post
    unless post.images.empty?
      return image_path(post.images.first.id)
    end
    nil
  end

  def get_gallery_path post
    if post.images.first.gallery
      return gallery_path(post.images.first.gallery.id)
    end
    nil
  end
  def not_sign_in
    (current_user == nil or current_user.role == nil or current_user.role == "not_a_member")
  end
end
