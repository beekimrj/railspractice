class ParagraphsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @paragraph = @article.paragraph.create(params[:paragraph].permit(:title, :body))

    redirect_to article_path(@article)

end

def destroy
    @article = Article.find(params[:article_id])
    @paragraph = @article.paragraph.find(params[:id])
    @paragraph.destroy
    redirect_to article_path(@article)
end
end
