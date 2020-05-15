class Parent
  @@all = []
  attr_reader :name, :kids

  def initialize(name)
    @name = name
    @kids = []

    @@all << self
  end
  
  def add_kid(kid_name)
    @kids << kid_name
  end

  def kids
    @kids
  end

  def kid_names
    @kids.map(&:name)
  end

  def self.all
    @@all
  end
end
