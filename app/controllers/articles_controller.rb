class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id].to_i)
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to article_path(@article)
  end

  def edit
    @article = Article.find(params[:id].to_i)
  end

  def update
    @article = Article.find(params[:id].to_i)
    @article.update(article_params)
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:id].to_i)
    @article.destroy
    redirect_to articles_path, status: :see_other
  end

  private

  def task_params
    params.require(:task).permit(:title, :content)
  end
end
