class ArticlesController < ApplicationController

  before_action :set_article, only: [:index, :update, :create, :destroy]

  def list
    @articles = Article.all
  end

  def show
    set_article
  end

  def create
    @article = Article.create(article_params)
    redirect_to articles_path(article)
  end

  def update
    @article.update(article_params)
    redirect_to article_path(@article)
  end

  def destroy
    @article.destroy
    redirect_to root_path
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
