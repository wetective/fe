module Displayable
  def image_urls(investigations)
    investigate = investigations.map do |investigation|
      investigation.mugshot if investigation.mugshot != ""
    end
  end
end