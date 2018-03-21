class BlogsController < ApplicationController
  helper_method :resource, :collection
  respond_to :rss, only: :index

  def show
    @title = "#{resource.title}"
  end

  def index
    @title = "EquiValent - Web Developer Blogs"
  end

  private
    def collection
      @collection ||= Blog.all
    end

    def resource
      @resource ||= Blog.find(params[:id])
    end
end
