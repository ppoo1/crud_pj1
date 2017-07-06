class PostsController < ApplicationController
    #Creat
    def new
        #사용자 정보 입력 화면
    end
    
    def create
        
        @post=Post.new()
        
        @post.title = params[:input_title]
        @post.content = params[:input_content]
        @post.save
        
        redirect_to "/posts/show/#{@post.id}"
    end
    
    #Read
    def index
        
        @posts = Post.all
    
    end
    
    def show
        @post = Post.find(params[:post_id])
    end
    
    #Update
    def edit
         @post = Post.find(params[:post_id])
    end
    
    
    def update
           @post = Post.find(params[:post_id])
           @post.title = params[:input_title]
           @post.content = params[:input_content]
           @post.save
          redirect_to "/posts/show/#{@post.id}"
    end    
    
    #Delete
    def destroy
        @post = Post.find(params[:post_id])
        @post.destroy
        
        redirect_to '/'
    end    
end
