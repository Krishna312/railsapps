class ArticlesController < ApplicationController
  def new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :content,
    :published_date)
  end
end
