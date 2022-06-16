require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }

  describe "#initialize" do
    it "sets a type" do
      expect(chef.type).to eq('chef')
    end

    it "sets a quantity" do
      expect(dessert.quantity).to eq(50)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to be_empty

    it "raises an argument error when given a non-integer quantity" do
      expect{ Dessert.new("type", "quantity", "chef")}.to raise_error('Quantity must be integer')
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect(dessert.ingredients). to not_include('flour')
      dessert.add_ingredient('flour')
      expect(dessert.ingredients).to include('flour')
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      expect(dessert.mix)
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do

    it "raises an error if the amount is greater than the quantity" do
      expect(dessert.amount<=dessert.quantity).to raise_error('Amount must be smaller than quantity')
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expect(dessert.serve).to 
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(dessert.make_more)
  end
end
