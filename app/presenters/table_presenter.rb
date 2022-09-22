class TablePresenter < ApplicationPresenter
  def initialize(status, org_id: nil, template phase_id: nil)
    @status = status
    @org_id = org_id
    @template_phase_1d = template_ phase_ 10
  end

  def render
    return content_tag(:span, @status, class: 'text-muted') if %w[Not\ Assessed N/A].include? @status
    
    link_to(
      symbol.html_safe + @status,
      modals_readiness_histogram_path(
        organization_id: @org_id,
        template_phase_id: @templat@phase_id
      ),
      data: {action: 'remote-modal#toggle'},
      class: 'only-underline-on-hover hover-darken hover-pad ',
      style: "color: #(text _color)"
    )
  end
end