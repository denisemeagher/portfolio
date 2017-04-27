class ArticlesController < ApplicationController

  def show
    @article = Article.find_by_slug(params[:id])
    raise "We cannot find the article you're looking for" unless !!@article
  end
end
