class RssController < ApplicationController
    def rss
      @blog_articles = Project.all
      respond_to do |format|
      format.rss { render :layout => false }
    end
  end
end
