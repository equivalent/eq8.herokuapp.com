class TypeEntries
  attr_reader :collector, :db_filepath

  def initialize(collector:, db_filepath:)
    @collector = collector
    @db_filepath = db_filepath
  end

  def collection
    collector.call(json_data)
  end

  def find(url_slug)
    collection
      .select { |b| b.id.to_i == url_slug.to_i }
      .first
  end

  private
    def json_data
      JSON.parse(File.read(db_filepath))
    end
end
