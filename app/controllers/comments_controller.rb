class CommentsController < ApplicationController
  def create
    @commentable = find_commentable
    @comment = @commentable.comments.build(comment_params)
    if @comment.save
      flash[:notice] = "Added Comment"
      redirect_to post_comment_path(post_id:@comment.commentable_id, id:@comment.id)
    else
      @post = Comment.new
      render action: :new
    end
  end

  private

  def find_commentable
    params.each do |name, value|
      if name =~ /(.+)_id$/
        return $1.classify.constantize.find(value)
      end
    end
    nil
  end

  def comment_params
    params[:comment].permit(:body)
  end

end
