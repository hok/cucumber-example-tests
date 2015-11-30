module Company
  module Sections
    # Section definition for search filters on TV listing page
    class SearchFilters < SitePrism::Section
      sections :facets, Company::Sections::Facet, 'div.facet'

      def facet(category)
        facets.find { |facet| facet.heading.text =~ /#{category}/i }
      end
    end
  end
end
