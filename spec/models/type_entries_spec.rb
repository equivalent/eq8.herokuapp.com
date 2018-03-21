require 'spec_helper'
RSpec.describe TypeEntries do
  describe '#collection' do
    context 'test setup' do
      let(:model) do
        described_class.new({
          collector: ->(arg){ arg },
          db_filepath: Rails.configuration.x.blog_db_file
        })
      end

      it do
        expect(model.collection).to match_array([
          {
            "id"=>1,
            "version"=>2,
            "github_file_name"=>"2013-09-bla-bla.md",
            "description"=>"This is a description",
            "created_at"=>"2014-01-16"
          },
          {
            "id"=>2,
            "version"=>3,
            "github_file_name"=>"foo-bar.md",
            "description"=>"This is another description",
            "created_at"=>"2015-10-30"
          }
        ])
      end
    end
  end
end
