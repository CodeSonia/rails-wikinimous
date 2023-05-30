class ArticlesController < ApplicationController
  # GET /articles
  def index
    @articles = Article.all
  end

  # GET /articles/:id
  def show
    @article = Article.find(params[:id])
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # POST /articles
  def create
    # Create a new article object with the parameters passed in
    @article = Article.new(article_params)

    # If the article is saved successfully, redirect to the show action
    # for that article
    if @article.save
      redirect_to @article
    else
      # Otherwise, render the new template again
      render :new
    end
  end

  # GET /articles/:id/edit
  def edit
    @article = Article.find(params[:id])
  end

  # PATCH /articles/:id
  def update
    # Find the article to update
    @article = Article.find(params[:id])

    # If the article is updated successfully, redirect to the show action
    # for that article
    if @article.update(article_params)
      redirect_to @article
    else
      # Otherwise, render the edit template again
      render :edit
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path, notice: "Article was successfully deleted", status: :see_other
  end

  private

  def article_params
    # Require the top-level key of "article" and permit the "title" and "body" keys
    params.require(:article).permit(:title, :content)
  end
end
