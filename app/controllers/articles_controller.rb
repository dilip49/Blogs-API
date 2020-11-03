class ArticlesController < ApplicationController
  def index
    articles = Article.recent
      .page(params[:page])
      .per(params[:per_page])

    render json: articles
  end

  def create
    article = Article.create(article_params)
    render json: {message: "article created", data: article}
  end

  def show
  end
  private

  def article_params
    params.require(:article).permit!
  end
end