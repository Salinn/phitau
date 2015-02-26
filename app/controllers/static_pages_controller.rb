class StaticPagesController < ApplicationController
  require 'will_paginate/array'

  def admin
    authorize! :admin, :controls
    @users = User.all
  end

  def home
    @posts = Post.where(top_card: [false, nil]).order(:id).reverse.paginate(:page => params[:page], :per_page => 3)
    @top_card = Post.find_by(top_card: true)
  end

  def resources

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
    @faq_categories = FaqCategory.all
  end

  def contact_us
    @eboard = Eboard.all.where.not(user_id: [false,nil])

    @chairs = Chair.all.where.not(user_id: [false,nil])
  end

  def information_for_students

  end

  def information_for_parents

  end

  def gamma_nu_50th_anniversary

  end
end
