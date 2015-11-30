# -*- coding: utf-8 -*-
module Company
  module Sections
    # Section definition for a TV
    class Tv < SitePrism::Section
      element :manufacturer, 'span.product-listing__manufacturer'
      element :model, 'span.product-listing__model'
      element :tested_date, 'div.product-listing__tested-date'
      element :compare_button, 'div.product-listing__compare-button'
      element :remove_from_compare, 'button.action-remove'
      element :add_to_compare, 'button.action-add'
      element :price_value, 'span.price-value'

      def price
        /\xC2\xA3(?<tv_price>\d+)\./ =~ price_value.text
        tv_price
      end
    end
  end
end
