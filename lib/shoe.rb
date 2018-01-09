class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand
BRANDS = []
  def initialize(brand)
    @brand = brand
    dup = BRANDS.include?(brand)
    BRANDS << brand
    if dup 
      BRANDS.pop
    end 
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end
 
  
end