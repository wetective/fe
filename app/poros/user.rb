class User 
  attr_reader :email,
              :id

  def initialize(attributes)
    @id = attributes[:id]
  end
end