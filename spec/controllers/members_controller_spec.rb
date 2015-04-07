require 'spec_helper'
require 'rails_helper'

describe MembersController do
  
  before :each do
    @member = Member.new
  end

  describe '#new' do
    it '@member should be an instance of Member' do
      expect(@member).to be_an_instance_of Member
    end
  end

  describe '#index' do
    it 'should return all the instances of Member' do
      expect(@member.all).to be_an Member
    end
  end

end
