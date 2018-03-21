module GithubConcern
  extend ActiveSupport::Concern

  included do
    include RedcarpetMarkdownToPrismjs
  end

  def github_file
    @github_file ||= GithubRepoFetcher.new(github_path + github_file_name)
  end

  def url
    Rails.cache.fetch [self.class.model_name, self.id, self.version, :github_url] do
      github_file.html_url
    end
  end

  def content
    Rails.cache.fetch [self.class.model_name, self.id, self.version, :github_prism_content] do
      prism_html(github_file.content).html_safe
    end
  end

  def title
    Rails.cache.fetch [self.class.model_name, self.id, self.version, :github_content_title] do
      Nokogiri::HTML(content).search('body h1').text
    end
  end
end
