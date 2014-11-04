class PostsController < ApplicationController
  respond_to :json

  def index
    respond_with Post.search(params[:q]).result(distinct: true)
  end
