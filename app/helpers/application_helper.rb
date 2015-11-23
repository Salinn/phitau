module ApplicationHelper
  def get_link post
    if post.images.empty?
      'no-image.png'
    else
      post.images.last.picture_url
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
end
