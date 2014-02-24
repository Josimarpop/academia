require 'spec_helper'

describe "Horas" do
  describe "GET /horas" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get horas_path
      response.status.should be(200)
    end
  end
end
