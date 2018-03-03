class CommentsController < ApplicationController
  before_action :set_comment, :set_movie, only: [:edit, :show, :update]
  before_action :authenticate_user!

  def index
  end

  def show
  end

  def new
    @comment = Comment.new
  end

  def edit
  end

  def create
    # @comment = @movie.comments.new(movie_params)
    # @comment.user_id = current_user.id
  end

  def update
    if @comment.update(comment_params)
      redirect_to movie_path(@movie)
    else
      render  :edit
    end
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_comment
    @comment = Comment.find(params[:id])
  end

  def set_movie  
    @movie = Movie.find(params[:movie_id])
  end

  def comment_params
    params.require(:comment).permit(:body)
  end
end