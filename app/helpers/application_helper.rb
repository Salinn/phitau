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
    if post.image.nil?
      'no-image.png'
    else
      post.image.picture_url
    end
  end

  def get_img_path post
    unless post.image.nil?
      return image_path(post.image.id)
    end
    nil
  end

  def get_gallery_path post
    if post.image && post.image.gallery
      return gallery_path(post.image.gallery.id)
    end
    nil
  end
  def not_sign_in
    (current_user == nil or current_user.user_status == nil or current_user.user_status == "not_a_member")
  end
end
