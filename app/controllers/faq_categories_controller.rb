class FaqCategoriesController < ApplicationController
  before_action :set_faq_category, only: [:show, :edit, :update, :destroy]

  def index
    @faq_categories = FaqCategory.all
    respond_with(@faq_categories)
  end

  def show
    respond_with(@faq_category)
  end

  def new
    @faq_category = FaqCategory.new
    respond_with(@faq_category)
  end

  def edit
  end

  def create
    @faq_category = FaqCategory.new(faq_category_params)
    flash[:notice] = 'FaqCategory was successfully created.' if @faq_category.save
    respond_with(@faq_category)
  end

  def update
    flash[:notice] = 'FaqCategory was successfully updated.' if @faq_category.update(faq_category_params)
    respond_with(@faq_category)
  end

  def destroy
    @faq_category.destroy
    respond_with(@faq_category)
  end

  private
    def set_faq_category
      @faq_category = FaqCategory.find(params[:id])
    end

    def faq_category_params
      params.require(:faq_category).permit(:title)
    end
end
