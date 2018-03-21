require 'spec_helper'

RSpec.describe BlogsController, type: :controller do
  describe "GET show" do
    let(:blog) { find_blog }

    let(:action) { get :show, id: blog.id }

    before { action }
    it { expect(response).to be_successful }
    it { expect(response).to render_template 'application/show' }
    it { expect(response).to render_template 'layouts/application'}
    it { expect(assigns :title).to eq 'This is dummy article heading' }
  end


  describe "GET index" do
    let(:action) { get :index }

    before { action }
    it { expect(response).to be_successful }
    it { expect(response).to render_template 'application/index' }
    it { expect(response).to render_template 'layouts/application'}
    it { expect(assigns(:title)).to eq 'EquiValent - Web Developer Blogs' }
  end
end
