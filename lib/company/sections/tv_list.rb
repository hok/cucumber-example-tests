module Company
  module Sections
    # Section definition for the list of TV's on the TV listing page
    class TvList < SitePrism::Section
      sections :tvs, Company::Sections::Tv, 'div.product-listing'
    end
  end
end
