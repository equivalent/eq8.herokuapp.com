module ApplicationHelper
  def icon(what)
    ICONS[what]
  end

  def icon_link(options)
    icon  = options[:icon]
    url   = options[:url]
    title = options[:title]

    capture_haml do
      link_to url do
        haml_tag :i,    class: "fa #{icon}", title: title
        haml_tag :span, class: "#{'hidden' if options[:hidden]}" do
          haml_concat title
        end
      end
    end
  end

  def published_date(resource)
    l(resource.created_at, format: :long)
  end

  def published_date_rss(resource)
    resource.created_at.to_s(:rfc822)
  end

  def google_analytics
    if Rails.env.production?
      %Q{
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

        ga('create', '#{ENV['GOOGLE_ANALITICS_ID']}', 'auto');
        ga('send', 'pageview');
      }
    end
  end
end
