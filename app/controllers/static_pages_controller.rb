class StaticPagesController < ApplicationController
  require 'will_paginate/array'

  def admin
    authorize! :admin, :controls
    @users = User.all
  end

  def home
    @posts = Post.all.reverse.paginate(:page => params[:page], :per_page => 3)
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
    dummy = users.where(role: "dummy")

    @eboard.push(users.where(role: "president").blank? ? dummy : users.where(role: "president"))
    @eboard.push(users.where(role: "first_vp").blank? ? dummy : users.where(role: "first_vp"))
    @eboard.push(users.where(role: "second_vp").blank? ? dummy : users.where(role: "second_vp"))
    @eboard.push(users.where(role: "treasurer").blank? ? dummy : users.where(role: "treasurer"))
    @eboard.push(users.where(role: "sergeant").blank? ? dummy : users.where(role: "sergeant"))
    @eboard.push(users.where(role: "chaplain").blank? ? dummy : users.where(role: "chaplain"))
    #
    @chairs.push(users.where(role: "recruitment").blank? ? dummy : users.where(role: "recruitment"))
    @chairs.push(users.where(role: "alumni relations").blank? ? dummy : users.where(role: "alumni relations"))
    @chairs.push(users.where(role: "web master").blank? ? dummy : users.where(role: "web master"))
    @chairs.push(users.where(role: "brotherhood").blank? ? dummy : users.where(role: "brotherhood"))
    @chairs.push(users.where(role: "social").blank? ? dummy : users.where(role: "social"))
    @chairs.push(users.where(role: "community service").blank? ? dummy : users.where(role: "community service"))
    @chairs.push(users.where(role: "philanthropy").blank? ? dummy : users.where(role: "philanthropy"))
    @chairs.push(users.where(role: "business ops").blank? ? dummy : users.where(role: "business ops"))

  end

  def information_for_students

  end

  def information_for_parents

  end

  def gamma_nu_50th_anniversary

  end
end
