class PagesController < ApplicationController
  def frontpage
    @linkedin   = DeveloperProfile.new(:linkedin)
    @so_careers = DeveloperProfile.new(:careers_stackoverflow)
    @github     = DeveloperProfile.new(:github)
    @twitter    = DeveloperProfile.new(:twitter)
  end

  protected
    def body_id
      'frontpage'
    end
end
