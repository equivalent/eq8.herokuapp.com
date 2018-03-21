class Specialization
  attr_reader :name

  def self.all
    mappings.collect { |m| new m }
  end

  def self.mappings
    ['Ruby on Rails', 'FrontEnd & BackEnd', 'Docker'] +
      [ 'TDD & BDD',  'API development'] +
      ['SEO', 'SOLID principles', 'UX']
  end

  def initialize(name)
    @name = name
  end

  def to_s
    name.html_safe
  end
end
