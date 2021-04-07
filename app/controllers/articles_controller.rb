class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    Article.create(article_params)
    if @article.save
      redirect_to root_path
    else
      render 'new'
    end
  end



  private
  def article_params
    params.require(:article).permit(:title, :image, :text,:book_name).merge(user_id: current_user.id)
  end
end
