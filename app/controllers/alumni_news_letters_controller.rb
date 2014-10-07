class AlumniNewsLettersController < ApplicationController
  before_action :set_alumni_news_letter, only: [:show, :edit, :update, :destroy]

  # GET /alumni_news_letters
  # GET /alumni_news_letters.json
  def index
    @alumni_news_letters = AlumniNewsLetter.all
  end

  # GET /alumni_news_letters/1
  # GET /alumni_news_letters/1.json
  def show
  end

  # GET /alumni_news_letters/new
  def new
    @alumni_news_letter = AlumniNewsLetter.new
  end

  # GET /alumni_news_letters/1/edit
  def edit
  end

  # POST /alumni_news_letters
  # POST /alumni_news_letters.json
  def create
    @alumni_news_letter = AlumniNewsLetter.new(alumni_news_letter_params)

    respond_to do |format|
      if @alumni_news_letter.save
        format.html { redirect_to @alumni_news_letter, notice: 'Alumni news letter was successfully created.' }
        format.json { render action: 'show', status: :created, location: @alumni_news_letter }
      else
        format.html { render action: 'new' }
        format.json { render json: @alumni_news_letter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alumni_news_letters/1
  # PATCH/PUT /alumni_news_letters/1.json
  def update
    respond_to do |format|
      if @alumni_news_letter.update(alumni_news_letter_params)
        format.html { redirect_to @alumni_news_letter, notice: 'Alumni news letter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @alumni_news_letter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alumni_news_letters/1
  # DELETE /alumni_news_letters/1.json
  def destroy
    @alumni_news_letter.destroy
    respond_to do |format|
      format.html { redirect_to alumni_news_letters_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alumni_news_letter
      @alumni_news_letter = AlumniNewsLetter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alumni_news_letter_params
      params.require(:alumni_news_letter).permit(:released_date, :alumni_new_letter_pdf, :remote_alumni_new_letter_pdf_url, :news_letter_html)
    end
end
