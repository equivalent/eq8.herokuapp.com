# Github gem response mock
#
# This class represent structure that will Github gem returns upo
# n call to repository
class GithubMock
  include RSpec::Mocks::ExampleMethods
  attr_accessor :user, :repo, :oauth_token

  def repos
    double :repos, contents: contents
  end

  private

  def contents
    double :contents,
      get: double(:get, content: content, html_url: html_url)
  end

  def content
    Base64.encode64 "# This is dummy article heading\n dummy paragraph"
  end

  def html_url
    'htp://dummy_url'
  end
end
