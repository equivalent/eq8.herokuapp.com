#encoding: UTF-8

xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
    xml.title title
    xml.author author
    xml.description "Web-Developer blog"
    xml.link "http://www.eq8.eu"
    xml.language "en"

    collection.each do |blog|
      xml.item do
        xml.title blog.title
        xml.author author
        xml.pubDate published_date_rss(blog)
        xml.link blog_url(blog)
        xml.guid blog.id

        xml.description "#{blog.description} "
      end
    end
  end
end
