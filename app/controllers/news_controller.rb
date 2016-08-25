class NewsController < ApplicationController

  def index
    @news = New.paginate(page: params[:page], :per_page => 10)
  end

  def ournews
    @news = New.paginate(page: params[:page], :per_page => 10)
  end

  def worldnews
    @news = New.paginate(page: params[:page], :per_page => 10)
  end

  def uanews
    @news = New.paginate(page: params[:page], :per_page => 10)
  end

  def show
    @news = New.find(params[:id])
  end

  def new
    @news = New.new
    @category = Category.all
  end

  def create
    @news = New.new(news_params)
    if @news.save
      redirect_to @news
    else
      render 'new'
    end
  end

  def edit
    @news = New.find(params[:id])
    @category = Category.all
  end

  def update
    @news = New.find(params[:id])
    if @news.update_attributes(news_params)
      flash[:success] = "News updated"
      redirect_to @news
    else
      render 'edit'
    end
  end

  def destroy
    @news = New.find(params[:id]).destroy
    redirect_to news_index_path
  end

  private

    def news_params
      params.require(:new).permit(:title, :content, :category_id)
    end
end
