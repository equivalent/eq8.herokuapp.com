class Talk
  include GithubConcern
  include GenericResource
  extend ActiveModel::Naming
  extend CollectionInterface

  attr_accessor :id, :version, :description, :github_file_name
  attr_writer :created_at

  def self._type_entries
    TypeEntries.new(collector: _collector, db_filepath: Rails.configuration.x.talk_db_file)
  end

  def self._collector
    ->(talks) { talks.map { |h| Talk.new(h) } }
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
    'archive/talks/'
  end

  def disqus_id
    "talk-#{id}"
  end
end
