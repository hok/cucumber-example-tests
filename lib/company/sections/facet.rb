module Company
  module Sections
    # Section definition for facets in search filters sidebar
    class Facet < SitePrism::Section
      element :heading, 'h3'
      element :toggle_all, 'button.toggle-show-all'
      elements :options, 'input'
      elements :option_label, 'span.inner-label'
    end
  end
end
