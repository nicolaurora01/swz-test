class CommentsController < ApplicationController

    def create
      @post = Post.find(params[:post_id])
      @comment = @post.comments.create(params[:comment].permit(:comment))
      @comment.user_id = current_user.id #or whatever is you session name
      if @comment.save
        redirect_to @post
      else
        flash.now[:danger] = "error"
      end
    end
end
