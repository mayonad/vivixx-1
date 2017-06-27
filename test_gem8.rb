class Cat

  attr_reader :name, :color
  def initialize(name, color)
    @name = name
    @color = color
  end
end

cats = [
 cat.new('Purry', :black),
 cat.new('Scratchy', :white),
 cat.new('Feral', :fawn),
 cat.new('Tiny', :fawn),
 cat.new('Leo', :white),
]

white_cats = cats.select do |cat|
  cat.color == :white
end
# => [Cat('Scratchy' :white),Cat('Leo' :white)]
white_cats = cats.select {|cat| cat.color == :white}

cats = [Cat.new('Purry', :black),Cat.new('Scratchy', :white),Cat.new('Feral', :fawn),
Cat.new('Tiny', :fawn),Cat.new('Tiny', :fawn)]
# => [:black,:white,:fown,:flown]


  # Get corresponding color for each cat
all_cat_colors = cats.map {|cat|cat.color}
# => [:black, :white, :fown, :fawn, :white]
unique_cat_colors = all_cat_colors.uniq
# => [:black,:white,:fown]
uniqe_cat_colors = cats.map {|cat|cat.color}.uniq
# => [:black,:white,:fown]



# Get corresponding color for each cat
cat_names = cats.map {|cat|cat.name}
# => ['Purry', 'SCRATECHY', 'FEAL', 'TINY','LEO']
uppercased_cat_names = cat_names.map {|name| name.upcase}
# => ['Purry', 'SCRATECHY', 'FEAL', 'TINY','LEO']
uppercased_cat_names = cats.map{|cat|cat.name.upcase}
# => ['Purry', 'SCRATECHY', 'FEAL', 'TINY','LEO']
