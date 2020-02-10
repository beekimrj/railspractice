class ParagraphsController < ApplicationController

  def index
    @paragraphs = Paragraph.all
  end


  def new
    # @article = Article.find(params[:article_id])
    # @paragraph =paragraph.create(params[:paragraph].permit(:title, :body))

    # redirect_to article_path(@paragraph)
    @paragraph = Paragraph.new
  end

  def create
    @paragraph = Paragraph.new(paragraph_params)

    if @paragraph.save
        redirect_to '/paragraphs'
    else
      render 'new'
    end
  end

  def destroy
      @article = Article.find(params[:article_id])
      @paragraph = @article.paragraph.find(params[:id])
      @paragraph.destroy
      redirect_to article_path(@article)
  end

  def edit
    @paragraph = Paragraph.find(params[:id])
  end

  def update
    @paragraph = Paragraph.find(params[:id])
    
    # if(@hotel.check_in_date > @hotel.check_out_date)
    #   # flash[:alert] = "You checked out in past!!"
    #   render 'edit'
    
      if @paragraph.update(paragraph_params)
      # flash[:notice] = "Updated successfully"
      redirect_to paragraphs_path
    else
      render 'edit'
    end

  end




  def paragraph_params
    params.require(:paragraph).permit(:title, :body, :article_id, :hotel_id)
  end

end
