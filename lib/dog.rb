class Dog 
  
  attr_accessor :name

  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def self.all
    @@all 
  end
  
  def self.print_all
    @@all.each {|dog| puts dog.name}
  end
  
  def save
    @@all << Dog.new(name)
  end
end