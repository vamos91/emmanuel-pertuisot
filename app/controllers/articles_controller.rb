class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params_article)
    if @article.save
      redirect_to articles_path
    end
  end

  def show
    find_article
  end

  def edit
    find_article
  end

  def update
    find_article
  end

  def destroy
    find_article

  end

private

def find_article
  @article = Article.find(params[:id])
end

def params_article
    params.require(:article).permit(:title, :description, :photo, :photo_cache)
end

end
