module Company
  module Pages
    # Page model for TV listing page
    class Televisions < SitePrism::Page
      set_url '/reviews/televisions'
      set_url_matcher '/reviews/televisions'

      section :tv_list, Company::Sections::TvList, 'ul.products'
      section :comparison_tool, Company::Sections::ComparisonTool, 'div.cont-products-compare'
      section :search_filters, Company::Sections::SearchFilters, 'aside.product-filters'
      element :sort_by, 'select.sort-selector'
      element :data_widget, 'main.front'

      def data_loading?
        data_widget.native[:class] =~ /loading/
      end
    end
  end
end
