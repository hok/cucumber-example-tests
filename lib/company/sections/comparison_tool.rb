module Company
  module Sections
    # Section definition for comparison tool
    class ComparisonTool < SitePrism::Section
      elements :products, 'ul li' # TODO: this should have a class/ID
    end
  end
end
