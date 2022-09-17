module ApplicationHelper
  def to_link(text)
    link_to(text, data_turbo_action: "replace", method: :show, params: { data_id: text })
    # text.gsub(/(http:\/\/[^\s]+)/, '<a href="\1">\1</a>')
  end
end
