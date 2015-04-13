require 'spec_helper'
require 'rails_helper'

describe MembersController do
  
  before :each do
    @member = Member.create!
    @member2 = Member.create!
  end

  describe '#new' do
    it '@member should be an instance of Member' do
      expect(@member).to be_an_instance_of Member
    end
  end

  describe '#index' do
    it 'all instances should be in Member.all' do
      expect(@member && @member2).to be_in Member.all
    end
  end

  describe '#show' do
    it '@member is the same as requested' do
      expect(@member).to eql Member.find(1)
    end
  end

  describe '#create' do
    it '' do
    end
  end

end
