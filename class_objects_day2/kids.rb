class Kid
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def find_parent
    Parent.all.find do |parent|
      parent.kids.include? self
    end
  end

  def parent_name
    find_parent.name
  end
end