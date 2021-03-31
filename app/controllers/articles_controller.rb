class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @articles = Article.new
  end

  def create
    Article.create(article_params)
  end


  private
  def article_params
    params.require(:tweet).permit(:title, :image, :text)
  end
end
