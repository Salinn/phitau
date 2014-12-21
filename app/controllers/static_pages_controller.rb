class StaticPagesController < ApplicationController
  require 'will_paginate/array'

  def admin
    authorize! :admin, :controls
    @users = User.all
  end

  def home
    @posts = Post.where(top_card: [false, nil]).reverse.paginate(:page => params[:page], :per_page => 3)
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


    recruitment=users.where(role: "recruitment").blank? ? nil : users.where(role: "recruitment")
    alumni_relations=users.where(role: "alumni_relations").blank? ? nil : users.where(role: "alumni relations")
    web_master=users.where(role: "admin").blank? ? nil : users.where(role: "admin")
    brotherhood=users.where(role: "brotherhood").blank? ? nil : users.where(role: "brotherhood")
    social=users.where(role: "social").blank? ? nil : users.where(role: "social")
    community_service=users.where(role: "community_service").blank? ? nil : users.where(role: "community service")
    philanthropy=users.where(role: "philanthropy").blank? ? nil : users.where(role: "philanthropy")
    business_ops=users.where(role: "business_ops").blank? ? nil : users.where(role: "business_ops")
    housing_manager=users.where(role: "housing_manager").blank? ? nil : users.where(role: "housing_manager")

    @chairs.push(recruitment) unless recruitment.nil?
    @chairs.push(alumni_relations) unless alumni_relations.nil?
    @chairs.push(web_master) unless web_master.nil?
    @chairs.push(brotherhood) unless brotherhood.nil?
    @chairs.push(social) unless social.nil?
    @chairs.push(community_service) unless community_service.nil?
    @chairs.push(philanthropy) unless philanthropy.nil?
    @chairs.push(business_ops) unless business_ops.nil?
    @chairs.push(housing_manager) unless housing_manager.nil?

  end

  def information_for_students

  end

  def information_for_parents

  end

  def gamma_nu_50th_anniversary

  end
end
