require 'spec_helper'

RSpec.describe 'blogs#index request', type: :request do
  RSpec::Matchers.define :have_xpath do |expected|
    match do |actual|
      actual.xpath(expected).any?
    end
    failure_message do |actual|
      "expected that \n\n #{actual.to_xml} \n\n would containe XPATH #{expected}"
    end
  end

  context 'rss' do
    before do
      get '/blogs', format: :rss
    end

    let(:xml) {  Nokogiri::XML::Document.parse(body) }
    let(:author) { 'Tomas Valent (EquiValent)' }
    let(:items) { xml.xpath('//rss/channel/item') }

    it do
      expect(response).to be_success
      expect(response.content_type).to eq("application/rss+xml")
    end

    it do
      expect(xml).to have_xpath('//rss/channel/title')
      expect(xml).to have_xpath('//rss/channel/title[contains(., "EquiValent - Web Developer Blogs")]')
    end

    it do
      expect(xml).to have_xpath('//rss/channel/description')
      expect(xml).to have_xpath('//rss/channel/description[contains(., "Web-Developer blog")]')
    end

    it do
      expect(xml).to have_xpath('//rss/channel/link')
      expect(xml).to have_xpath("//rss/channel/link[contains(., 'http://www.eq8.eu')]")
    end

    it do
      expect(xml).to have_xpath('//rss/channel/language')
      expect(xml).to have_xpath('//rss/channel/language[contains(., "en")]')
    end


    it do
      expect(xml).to have_xpath('//rss/channel/item')
    end

    it do
      expect(items.size).to be 2
    end

    context 'item of atom' do
      let(:blog) { find_blog(id: 2) }
      let(:item) { items.first }

      it do
        # content of title is not important in this case as it's beeing stubbed
        expect(item).to have_xpath(%Q{./title})
        expect(item).to have_xpath(%Q{./title[contains(., "#{blog.title}")]})
      end

      it do
        expect(item).to have_xpath(%Q{./description})
        expect(item).to have_xpath(%Q{./description[contains(., "#{blog.description}")]})
      end

      it do
        expect(item).to have_xpath(%Q{./guid})
        expect(item).to have_xpath(%Q{./guid[contains(., "2")]})
      end

      it do
        expect(item).to have_xpath(%Q{./pubDate})
        expect(item).to have_xpath(%Q{./pubDate[contains(., "30 Oct 2015")]})
      end

      it do
        expect(item).to have_xpath(%Q{./author})
        expect(item).to have_xpath(%Q{./author[contains(., "#{author}")]})
      end

      it do
        expect(item).to have_xpath(%Q{./link})
        expect(item).to have_xpath(%Q{./link[contains(., "http://www.eq8.eu/blogs/2-this-is-dummy-article-heading")]})
      end
    end

    context 'item of atom' do
      let(:blog) { find_blog(id: 1) }
      let(:item) { items.last }

      it do
        # content of title is not important in this case as it's beeing stubbed
        expect(item).to have_xpath(%Q{./title})
        expect(item).to have_xpath(%Q{./title[contains(., "#{blog.title}")]})
      end

      it do
        expect(item).to have_xpath(%Q{./description})
        expect(item).to have_xpath(%Q{./description[contains(., "#{blog.description}")]})
      end

      it do
        expect(item).to have_xpath(%Q{./guid})
        expect(item).to have_xpath(%Q{./guid[contains(., "#{blog.id}")]})
      end

      it do
        expect(item).to have_xpath(%Q{./pubDate})
        expect(item).to have_xpath(%Q{./pubDate[contains(., "16 Jan 2014")]})
      end

      it do
        expect(item).to have_xpath(%Q{./author})
        expect(item).to have_xpath(%Q{./author[contains(., "#{author}")]})
      end

      it do
        expect(item).to have_xpath(%Q{./link})
        expect(item).to have_xpath(%Q{./link[contains(., "http://www.eq8.eu/blogs/#{blog.to_param}")]})
      end
    end
  end
end
