class CommentsController < ApplicationController

    def create
      @post = Post.find(params[:post_id])
      @comment = @post.comments.create(params[:comment].permit(:comment))
      @comment.user_id = current_user.id #or whatever is you session name
      if @comment.save
         redirect_to @post
        #  ActionCable.server.broadcast "commentroom_channel",
        #                             mod_message: message_render(@comment)
      else
        flash.now[:danger] = "error"
      end
    end
  private
 def message_render(comment)
    render(partial: 'comments/comment',locals: {comment: comment.post})
 end

end
