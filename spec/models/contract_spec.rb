require 'rails_helper'

RSpec.describe Contract, type: :model do
  describe "creating a contract" do
    let(:valid_contract) do
      Contract.new(
        description: "Kirk moved minerals worth 300 from Calas to Dathomir",
        payload: "minerals",
        origin_planet: "Calas",
        destination_planet: "Dathomir",
        value: 300
      )
    end
    it "creates a contract with valid params" do
      expect(valid_contract.valid?).to be true
    end

    it "creates an invalid contract based off the payload being invalid" do
      valid_contract.payload = "cake"
      expect(valid_contract.valid?).to be false
    end

    it "creates an invalid contract if any contract field is ommitted" do
      valid_contract.description = nil
      expect(valid_contract.valid?).to be false
    end

    # need planet model
    xit "checks that the contract's destination planet and origin planet exist within the system" do
    end
    
  end
end