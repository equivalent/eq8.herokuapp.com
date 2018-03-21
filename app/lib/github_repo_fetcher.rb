class GithubRepoFetcher
  attr_reader :file_path

  def initialize(full_file_path)
    @file_path = full_file_path
  end

  def content
    Base64.decode64 github_data.content
  end

  def html_url
    github_data.html_url
  end

  private
    def connection
      @connection ||= begin
        Github.new.tap do |g|
          g.user = 'equivalent'
          g.repo = 'scrapbook2'
          g.oauth_token = ENV['GITHUB_OAUTH']
        end
      end
    end


    def github_data
      @github_data ||= connection.repos.contents.
        get(path: file_path)
    end
end
