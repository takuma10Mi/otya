class BlogsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  def index
    @article = Article.all.order("id DESC")
  end

  def new
  end
  def show
    @article = Article.find(params[:id])
  end
  def create
    Article.create(blog_params)
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
  end

  def destroy
    article = Article.find(params[:id])
    article.destroy if article.user_id === current_user.id
  end
  private
    def blog_params
      params.permit(:title, :image, :content).merge(user_id: current_user.id) 
    end
    def move_to_index
      redirect_to action: :index unless user_signed_in?
    end
    
end
