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
    authorize! :user, :controls, :message => 'You need to login to access User Resources'
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
    eboard = Position.where.not(on_eboard: false, user_id: nil)
    @eboard = []
    eboard.each { |position|@eboard.push(position) if position.role.name == 'president' }
    eboard.each { |position|@eboard.push(position) if position.role.name == 'first_vp' }
    eboard.each { |position|@eboard.push(position) if position.role.name == 'second_vp' }
    eboard.each { |position|@eboard.push(position) if position.role.name == 'treasurer' }
    eboard.each { |position|@eboard.push(position) if position.role.name == 'chaplain' }
    eboard.each { |position|@eboard.push(position) if position.role.name == 'sergeant' }

    @chairs = Position.where.not(on_eboard: true, user_id: nil)

    @brothers = User.where(user_status: ['current brother','coop'])

    @associate_members = User.where(user_status: 'associate member')
  end

  def information_for_students

  end

  def information_for_parents

  end

  def gamma_nu_50th_anniversary

  end
  def fiftieth_info

  end
end
