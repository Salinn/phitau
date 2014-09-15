class StaticPagesController < ApplicationController
  @posts = Post.all
  @users = User.all
  def admin
    @users
  end

  def home
    @posts
  end

  def about

  end

  def national_history

  end

  def national_fast_facts

  end

  def local_history

  end

  def local_fast_facts

  end

  def volunteer_opportunities

  end

  def parents_fund

  end

  def faq

  end

  def contact_us

  end

  def information_for_students

  end

  def information_for_parents

  end
end
