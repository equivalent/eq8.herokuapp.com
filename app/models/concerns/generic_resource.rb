module GenericResource
  def to_param
   "#{id}-#{title.parameterize}"
  end

  def to_model
    self
  end

  def persisted?
    true
  end

  def model_name
    self.class.model_name
  end

  def created_at
    Date.parse(@created_at)
  end
end
