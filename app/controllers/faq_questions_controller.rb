class FaqQuestionsController < ApplicationController
  before_action :set_faq_question, only: [:show, :edit, :update, :destroy]
  respond_to :html, :xml, :json
  load_and_authorize_resource

  def index
    @faq_questions = FaqQuestion.all
    respond_with(@faq_questions)
  end

  def show
    respond_with(@faq_question)
  end

  def new
    @faq_question = FaqQuestion.new
    respond_with(@faq_question)
  end

  def edit
  end

  def create
    @faq_question = FaqQuestion.new(faq_question_params)
    flash[:notice] = 'FaqQuestion was successfully created.' if @faq_question.save
    respond_with(@faq_question)
  end

  def update
    flash[:notice] = 'FaqQuestion was successfully updated.' if @faq_question.update(faq_question_params)
    respond_with(@faq_question)
  end

  def destroy
    @faq_question.destroy
    respond_with(@faq_question)
  end

  private
    def set_faq_question
      @faq_question = FaqQuestion.find(params[:id])
    end

    def faq_question_params
      params.require(:faq_question).permit(:title, :content, :faq_category_id, :order)
    end
end
