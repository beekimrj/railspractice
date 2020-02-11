class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
    @article.paragraphs.build
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render 'new'
    end

  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end

  end


  def destroy
    @article = Article.find(params[:id])
    @article.destroy 
    redirect_to home_path

end

  private
  def article_params
    params.require(:article).permit(:id, :title, :body, paragraphs_attributes: [:title, :body,:article_id, :hotel_id])
  end
end
