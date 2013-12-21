require 'spec_helper'

describe Spree::Order do

  let(:order){Spree::Order.new}

  it 'should validate presence of tc_accepted' do
    order.valid_terms_and_conditions?.should be_false
    order.errors[:terms_and_conditions].should == ["must be accepted"]
  end

  it 'should be valid if terms and conditions are accepted' do
    order.terms_and_conditions = true
    order.valid_terms_and_conditions?.should be_true
    order.errors[:terms_and_conditions].should be_empty
  end

end
