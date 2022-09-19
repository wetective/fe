module ApplicationHelper
  def to_link(text)
    render partial: 'locations/link', locals: { city: text }
    # link_to(text, filter: text)
  end
end
