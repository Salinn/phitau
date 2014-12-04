class StaticPagesController < ApplicationController

  def admin
    authorize! :admin, :controls
    @users = User.all
  end

  def home
    @posts = Post.all.page(params[:page]).per_page(3)
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

  def gamma_nu_50th_anniversary

  end
end
