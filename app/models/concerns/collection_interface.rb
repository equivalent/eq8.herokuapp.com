module CollectionInterface
  def all
    _type_entries.collection.reverse
  end

  def find(url_slug)
    _type_entries.find(url_slug)
  end
end
