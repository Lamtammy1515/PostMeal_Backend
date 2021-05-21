class CommentsController < ApplicationController
    
    def index
        comments = Comment.all
        render json: JSON.pretty_generate(comments.as_json), status: 200
      end
    
    def create
        comment = Comment.create(comment: params[:comment], meal_id: params[:meal_id])
        if comment.save
            comment.format_date = comment.created_at.strftime("%A, %d %b %Y")
            comment.save
            render json: comment
        else
            render json: {error: "Error creating comment."}
        end
    end

    def show
        render json: @comment, status: 200
    end

    def destroy
        comment_id = params[:id]
        comment = Comment.find(params[:id])
        comment.destroy
        render json: {id: comment_id.to_i}        
    end

end
