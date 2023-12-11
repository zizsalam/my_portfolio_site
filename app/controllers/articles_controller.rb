class ArticlesController < ApplicationController
  def index
  end

  def show
    @article = Article.find_by(id: params[:id])

  if @article.nil?
    # Handle the case where the article is not found, e.g., redirect to the root path.
    redirect_to_custom_root_path
  end
  end


private

  def redirect_to_custom_root_path
    redirect_to articles_path, alert: "Article not found"
  end
end
