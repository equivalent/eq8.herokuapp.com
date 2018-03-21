class Til
  include GithubConcern
  include GenericResource
  extend ActiveModel::Naming
  extend CollectionInterface

  attr_accessor :id, :version, :github_file_name
  attr_writer :created_at

  def self._type_entries
    TypeEntries.new(collector: _collector, db_filepath: Rails.configuration.x.til_db_file)
  end

  def self._collector
    ->(tils) { tils.map { |h| Til.new(h) } }
  end

  def initialize(attributes={})
    attributes.symbolize_keys!
    self.id               = attributes[:id]
    self.version          = attributes[:version]
    self.created_at       = attributes[:created_at]
    self.github_file_name = attributes[:github_file_name]
  end

  def description
  end

  def github_path
    'archive/mini-blogs/'
  end

  def disqus_id
    "til-#{id}"
  end
end
