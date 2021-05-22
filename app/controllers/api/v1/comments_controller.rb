class Api::V1::CommentsController < ApplicationController
    
    before_action :set_comment, only: %i[ show update destroy ]

    def index
      @comments = Comment.all
  
      render json: @comments
    end

    def show
      render json: @comment, status: 200
    end

    def create
      @comment = Comment.create(comment: params[:comment])
  
      if @comment.save
        render :show, status: :created, location: @comment
      else
        render json: @comment.errors, status: :unprocessable_entity
      end
    end

    def update
      if @comment.update(comment_params)
        render :show, status: :ok, location: @comment
      else
        render json: @comment.errors, status: :unprocessable_entity
      end
    end

    def destroy
      @comment.destroy
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_comment
        @comment = Comment.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def comment_params
        params.require(:comment).permit(:comment)
      end
end
