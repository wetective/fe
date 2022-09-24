class AnimalFacade
  def self.get_random_dog
    AnimalService.random_dog
  end

  def self.get_random_cat
    AnimalService.random_cat
  end
end