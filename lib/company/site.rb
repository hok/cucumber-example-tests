require_relative 'sections'
require_relative 'pages'

module Company
  # Class to define site wide helpers, pages, potential domain models
  class Site
    include Company::Pages
  end
end
