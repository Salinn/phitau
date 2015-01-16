class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  # GET /posts
  # GET /posts.json
  def index
    if params[:query].present?
      @posts = Post.search(params[:query], fields: [:title], page: params[:page])
    else
      @posts = Post.all.page params[:page]
    end
  end

  def autocomplete
    render json: Post.search(params[:query], autocomplete: true, fields: [:title],limit: 10).map { |post| post.title }
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)

    update_author
    top_card_check_and_fix

    respond_to do |format|
      if @post.save
        #UserMailer.signup_confirmation(current_user).deliver
        format.html { redirect_to posts_path, notice: 'Post was successfully created.' }
        format.json { render action: 'show', status: :created, location: @post }
      else
        format.html { render action: 'new' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      top_card_check_and_fix if params[:post][:top_card] == '1'
      if @post.update(post_params)
        format.html { redirect_to posts_path, notice: 'Post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title,:content,:published, :image, :remote_image_url, :top_card, :author)
    end

    def top_card_check_and_fix
      old_top_post = Post.find_by(top_card: true)
      unless old_top_post.nil?
        old_top_post.top_card = false
        old_top_post.save
      end
    end

    def update_author
      @post.author = current_user.first_name + " " + current_user.last_name
    end
end
