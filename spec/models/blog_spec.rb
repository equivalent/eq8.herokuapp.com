require 'spec_helper'
RSpec.describe Blog do
  let(:repo_object) { double :repository_object_mock }

  describe '.all' do
    subject { described_class.all }

    it do
      expect(subject).to be_kind_of Array
      expect(subject.size).to be 2
    end

    context 'element' do
      it do
        expect(subject.first).to be_kind_of Blog
        expect(subject.first.id).to be 2
        expect(subject.last.id).to be 1
      end
    end
  end

  describe '.find' do
    subject { described_class.find('2-deesnt-matter') }

    it do
      expect(subject).to be_kind_of Blog
      expect(subject.id).to eq 2
    end
  end

  describe 'initialiation' do
    subject { described_class.new(attributes) }

    let(:attributes) do
      {
        id: 2,
        version: 3,
        'created_at' => '2012-01-01',
        description: 'bla bla',
        github_file_name: "fooo"
      }
    end

    it { expect(subject.id).to eq 2 }
    it { expect(subject.version).to eq 3 }
    it { expect(subject.created_at).to eq Date.parse('2012-01-01') }
    it { expect(subject.description).to eq 'bla bla' }
    it { expect(subject.github_file_name).to eq 'fooo' }
  end

  describe '#to_param' do
    subject{ blog.to_param }
    let(:blog){ find_blog }
    it do
      expect(subject).to eq "#{blog.id}-this-is-dummy-article-heading"
    end
  end

  describe '#created_at' do
    subject{ blog.created_at }
    let(:blog){ find_blog }

    it do
      expect(subject).to be_kind_of Date
      expect(subject).to eq Date.parse('2014-01-16')
    end
  end

  describe '#github_repo' do
    let(:blog){ find_blog }

    it 'should correctly receive path' do
      expect(GithubRepoFetcher)
        .to receive(:new)
        .with("archive/blogs/2013-09-bla-bla.md").and_return(repo_object)
      expect(blog.github_file).to be repo_object
    end
  end

  describe '#content' do
    subject{ blog.content }
    let(:blog){ find_blog }

    it 'should be html-izied article' do
      expect(subject).to eq "<h1>This is dummy article heading</h1>\n\n" +
        "<p>dummy paragraph</p>\n"
    end
  end

  describe '#title' do
    subject{ blog.title }
    let(:blog){ find_blog }

    it { expect(subject).to eq 'This is dummy article heading' }
  end

  describe '#url' do
    subject{ blog.url }
    let(:blog){ find_blog }

    it { expect(subject).to eq 'htp://dummy_url' }
  end
end
