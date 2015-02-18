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
    @eboard = []
    @chairs = []

    users = User.where.not(role: ["alumni","current brother","potential new member"])

    president=users.where(role: "president").blank? ? nil : users.where(role: "president")
    first_vp=users.where(role: "first_vp").blank? ? nil : users.where(role: "first_vp")
    second_vp=users.where(role: "second_vp").blank? ? nil : users.where(role: "second_vp")
    treasurer=users.where(role: "treasurer").blank? ? nil : users.where(role: "treasurer")
    sergeant=users.where(role: "sergeant").blank? ? nil : users.where(role: "sergeant")
    chaplain=users.where(role: "chaplain").blank? ? nil : users.where(role: "chaplain")

    @eboard.push(president) unless president.nil?
    @eboard.push(first_vp) unless first_vp.nil?
    @eboard.push(second_vp) unless second_vp.nil?
    @eboard.push(treasurer) unless treasurer.nil?
    @eboard.push(sergeant) unless sergeant.nil?
    @eboard.push(chaplain) unless chaplain.nil?

    @chairs = Chair.all.where.not(user_id: [false,nil])
  end

  def information_for_students

  end

  def information_for_parents

  end

  def gamma_nu_50th_anniversary

  end
end
