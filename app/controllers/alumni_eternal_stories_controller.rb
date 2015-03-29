class AlumniEternalStoriesController < ApplicationController
  before_action :set_alumni_eternal_story, only: [:show, :edit, :update, :destroy]
  respond_to :html
  load_and_authorize_resource

  def index
    @alumni_eternal_stories = AlumniEternalStory.all
    respond_with(@alumni_eternal_stories)
  end

  def show
    respond_with(@alumni_eternal_story)
  end

  def new
    @alumni_eternal_story = AlumniEternalStory.new
    respond_with(@alumni_eternal_story)
  end

  def edit
  end

  def create
    @alumni_eternal_story = AlumniEternalStory.new(alumni_eternal_story_params)
    flash[:notice] = 'AlumniEternalStory was successfully created.' if @alumni_eternal_story.save
    respond_with(@alumni_eternal_story)
  end

  def update
    flash[:notice] = 'AlumniEternalStory was successfully updated.' if @alumni_eternal_story.update(alumni_eternal_story_params)
    respond_with(@alumni_eternal_story)
  end

  def destroy
    @alumni_eternal_story.destroy
    respond_with(@alumni_eternal_story)
  end

  private
    def set_alumni_eternal_story
      @alumni_eternal_story = AlumniEternalStory.find(params[:id])
    end

    def alumni_eternal_story_params
      params.require(:alumni_eternal_story).permit(:user_id, :story, :alumni_eternal_id)
    end
end
