require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", :name => "Gordon") }
  subject(:dessert) do
    Dessert.new("cake", 10, chef)
  end

  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to eq("cake")
    end

    it "sets a quantity" do
      expect(dessert.quantity).to eq(10)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect do
        Dessert.new("cake", "cat", chef)
      end.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      dessert.add_ingredient("2 eggs")
      expect(dessert.ingredients).to eq(["2 eggs"])
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      dessert.add_ingredient("2 eggs")
      dessert.add_ingredient("1 cup of milk")
      dessert.add_ingredient("2 cups of flour")
      dessert.mix!
      expect(dessert.ingredients).to_not eq(["2 eggs", "1 cup of milk", "2 cups of flour"])
      expect(dessert.ingredients.sort).to eq(["2 eggs", "1 cup of milk", "2 cups of flour"].sort)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      dessert.eat(7)
      expect(dessert.quantity).to eq(3)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect do
        dessert.eat(100)
      end.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Chef #{chef.name} the Great Baker")

      expect(dessert.serve).to eq("Chef Gordon the Great Baker has made 10 cakes!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      allow(chef).to receive(:bake).with(dessert)
      dessert.make_more
    end
  end
end
