class User < ApplicationRecord
  attr_accessor :firstName, :lastName, :studentid

  def initialize(attributes = {})
    @firstName  = attributes[:firstName]
    @lastName  = attributes[:lastName]
    @studentid = attributes[:studentid]
   
  end

  def formatted_email
    "#{@studentid}@uncc.edu"
  end

end
