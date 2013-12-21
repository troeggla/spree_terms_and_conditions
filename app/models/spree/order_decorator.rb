Spree::Order.class_eval do

  def valid_terms_and_conditions?
    self.errors[:terms_and_conditions] << 'must be accepted' unless self.terms_and_conditions == true
    self.errors[:terms_and_conditions].empty? ? true : false
  end

end

Spree::PermittedAttributes.checkout_attributes << :terms_and_conditions

Spree::Order.state_machine.before_transition :to => :payment, :do => :valid_terms_and_conditions?
