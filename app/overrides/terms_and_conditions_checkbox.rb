Deface::Override.new(:virtual_path => "spree/checkout/_delivery",
                     :name => "terms_and_conditions_checkbox",
                     :insert_after => "#shipping_method",
                     :partial => "spree/checkout/terms_and_conditions_checkbox",
                     :disabled => false)
