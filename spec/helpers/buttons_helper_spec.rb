require 'spec_helper'

RSpec.describe ButtonsHelper, type: :helper do
  include ApplicationHelper
  include FontAwesome::Rails::IconHelper

  let(:resource) { find_blog }

  describe "#show_button" do
    subject { show_button resource }

    it { expect(subject).to have_content 'View Blog' }
    it { expect(subject).to have_selector 'i.fa' }
    it { expect(subject).to have_selector 'i.fa-eye' }
    it { expect(subject).to have_selector 'i[title="View Blog"]' }
    it { expect(subject).to have_selector "a.button.small.secondary.radius" }
    it { expect(subject).to have_selector "a[href=\"/blogs/#{resource.id}-this-is-dummy-article-heading\"] i" }
  end
end
