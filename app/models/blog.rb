class Blog
  include GithubConcern
  include GenericResource
  extend ActiveModel::Naming
  extend CollectionInterface

  attr_accessor :id, :version, :description, :github_file_name
  attr_writer :created_at

  def self._type_entries
    TypeEntries.new(collector: _collector, db_filepath: Rails.configuration.x.blog_db_file)
  end

  def self._collector
    ->(blogs) { blogs.map { |h| Blog.new(h) } }
  end

  def initialize(attributes={})
    attributes.symbolize_keys!
    self.id               = attributes[:id]
    self.version          = attributes[:version]
    self.created_at       = attributes[:created_at]
    self.description      = attributes[:description]
    self.github_file_name = attributes[:github_file_name]
  end

  def github_path
    'archive/blogs/'
  end

  def disqus_id
    id
  end
end
