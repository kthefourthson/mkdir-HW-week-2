# Homework:
# Task: Choose a real-world object to model (e.g., Book, Student, Animal) and create a class.
# Instructions:
# Define a class with an initialize method.
# Use attr_accessor for attributes (or attr_reader/attr_writer if the users shouldn't have access to everything).
# # # Add at least one custom method that performs an action (ex. info_about_user from the Person class).
# class Surfboard 
#   attr_reader :length, :width, :thickness

#   def intitialize(length,width,thickness) 
#     @length = length 
#     @width = width 
#     @thickness = thickness 
#   end
# end 

    # SB1 = Surfboard.new("6'0", "Al Merrick", "19.12x2.25")
    # SB2 = Surfboard.new("5'9", "Sharp Eye", "19.00x2.5")
    # SB3 = Surfboard.new("5'9", "Puka", "18.75x2.0")
    



class Surfboard
attr_accessor :length, :shaper, :dims  

  def initialize(length,shaper,dims)
  @length = length 
  @shaper = shaper 
  @dims = dims 
  end 
  def board_info
    "Surfboard: #{@length} by #{@shaper} with dimensions #{@dims}"
  end
end

SB1 = Surfboard.new("6'0", "Al Merrick", "19.12x2.25")
  p "Ocean Beach Surf Club" 
  p SB1.length 
  p SB1.shaper 
  p SB1.dims 
  p "Inspection Passed"
  SB2 = Surfboard.new("5'9", "Sharp Eye", "19.00x2.5")
    p "Pacific Beach Board Club"
    p SB2.length 
    p SB2.shaper 
    p SB2.dims 
    p "Passed Inspection"
    
  SB3 = Surfboard.new("5'9", "Puka", "18.75x2.0")
    p "San Diego Surf Club"
    p SB3.length 
    p SB3.shaper 
    p SB3.dims 
    p "* Did not make expection" 
    p "(PLEASE INSPECT THICKNESS AND FIN SYSTEM)"

p  '-----------------------------------------------------'
      p "SURFBOARD INFO >>>> SEE BELOW"

p   '-----------------------------------------------------'



    p SB1.board_info
    p SB2.board_info
    p SB3.board_info

