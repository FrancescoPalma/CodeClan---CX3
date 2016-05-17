class Animal < ActiveRecord::Base
  def move
    return "slither" if !self.legs || self.legs == 0 
    "walk"
  end
end
