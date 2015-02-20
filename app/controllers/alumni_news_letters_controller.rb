class AlumniNewsLettersController < ApplicationController
  before_action :set_alumni_news_letter, only: [:show, :edit, :update, :destroy]
  respond_to :html, :xml, :json
  load_and_authorize_resource

  def index
    @alumni_news_letters = AlumniNewsLetter.all.order(:released_date).reverse.paginate(:page => params[:page], :per_page => 1)
    respond_with(@alumni_news_letters)
  end

  def show
    respond_with(@alumni_news_letter)
  end

  def new
    @alumni_news_letter = AlumniNewsLetter.new
    respond_with(@alumni_news_letter)
  end

  def edit
  end

  def create
    @alumni_news_letter = AlumniNewsLetter.new(alumni_news_letter_params)

    flash[:notice] = 'Alumni news lette was successfully created.' if @alumni_news_letter.save
    respond_with(@alumni_news_letter)
  end

  def update
    flash[:notice] = 'Alumni news letter was successfully updated.' if @alumni_news_letter.update(alumni_news_letter_params)
    respond_with(@alumni_news_letter)
  end

  def destroy
    @alumni_news_letter.destroy
    respond_with(@alumni_news_letter)
  end

  private
    def set_alumni_news_letter
      @alumni_news_letter = AlumniNewsLetter.find(params[:id])
    end

    def alumni_news_letter_params
      params.require(:alumni_news_letter).permit(:released_date, :news_letter_html)
    end
end
