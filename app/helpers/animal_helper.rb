module AnimalHelper
  def random_dog
    @dog = AnimalFacade.get_random_dog[:message]
  end

  def random_cat
    @cat = AnimalFacade.get_random_cat
  end
end