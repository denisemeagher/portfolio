class SitesController < ApplicationController
  layout "site"
  def index
    @site = Site.find_by_slug("portfolio")
    @articles = Article.available
    raise "We cannot find the site you're looking for" unless !!@site
  end
end
