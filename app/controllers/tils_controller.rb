class TilsController < ApplicationController
  helper_method :resource, :collection
  respond_to :rss, only: :index

  def show
    @title = "#{resource.title}"
  end

  def index
    @sub_title = "Today I've lerned (TIL) mini blog"
    @title = "EquiValent - Today I've lerned blog"
  end

  private
    def collection
      @collection ||= Til.all
    end

    def resource
      @resource ||= Til.find(params[:id])
    end
end
