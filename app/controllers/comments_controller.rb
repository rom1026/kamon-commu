class CommentsController < ApplicationController

  def index
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  private

  def comment_params
    params.require(:comment).permit(:nickname, :last_name, :first_name, :birth_date, :kamon_id).merge(user_id: current_user.id)
  end

end
