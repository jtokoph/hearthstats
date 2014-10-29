require 'spec_helper'

describe UniqueDeckType do
  let(:unique_deck) { create :unique_deck, klass_id: 1 }
  let(:unique_deck_type) { create :unique_deck_type, klass_id: 1 }

  describe "class methods" do
    describe "#find_type" do 
      it "returns id of a deck if cards are matched" do
        type_id = UniqueDeckType.find_type(unique_deck)
        type_id.should == 1
      end
    end

    describe "#match_type" do
      it "returns 'true' if matched" do
        matched = UniqueDeckType.match_type(unique_deck.cardstring, unique_deck_type)
        matched.should == true
      end
    end
  end
end