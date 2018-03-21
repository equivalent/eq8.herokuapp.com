class DeveloperProfile
  def self.all
    mappings.keys.collect{|p| new p }
  end

  def self.mappings
    @mappings ||= YAML.load_file("#{Rails.root}/config/developer_profiles.yml")
  end

  attr_reader :profile_hash, :profile_key

  def initialize(profile_key)
    @profile_key  = profile_key.to_s
    @profile_hash = self.class.mappings.fetch(@profile_key).with_indifferent_access
  end

  def title
    profile_hash.fetch(:title)
  end

  def narcisistic_title
    "Equivalent at #{title}"
  end

  def url
    profile_hash.fetch(:url)
  end

  def icon
    profile_hash.fetch(:icon)
  end

  def to_social_hash
    {
      title:  narcisistic_title,
      url:    url,
      icon:   icon,
      hidden: true
    }
  end
end
