require 'rails_helper'

RSpec.describe Item, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:categories) }

    it { should have_many(:pantries) }

    it { should have_many(:recipe_details) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
