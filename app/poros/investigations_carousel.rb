class InvestigationsCarousel
  def image_urls(investigations)
    investigate = investigations.map do |investigation|
      investigation.mugshot if investigation.mugshot != ""
    end
    require 'pry'; binding.pry 
  end
end