require 'rails_helper'

RSpec.describe Ingredient, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:ingredient) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
