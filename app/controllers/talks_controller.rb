class TalksController < ApplicationController
  helper_method :resource, :collection
  respond_to :rss, only: :index

  def show
    @title = "#{resource.title}"
  end

  def index
    @title = "EquiValent - Web Developer Talks"
  end

  private
    def collection
      @collection ||= Talk.all
    end

    def resource
      @resource ||= Talk.find(params[:id])
    end
end
