require_relative 'pages/televisions'

module Company
  # Page model accessor methods
  module Pages
    def televisions_page
      @televisions_page ||= Company::Pages::Televisions.new
    end
  end
end
