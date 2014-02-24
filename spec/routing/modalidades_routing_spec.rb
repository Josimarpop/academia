require "spec_helper"

describe ModalidadesController do
  describe "routing" do

    it "routes to #index" do
      get("/modalidades").should route_to("modalidades#index")
    end

    it "routes to #new" do
      get("/modalidades/new").should route_to("modalidades#new")
    end

    it "routes to #show" do
      get("/modalidades/1").should route_to("modalidades#show", :id => "1")
    end

    it "routes to #edit" do
      get("/modalidades/1/edit").should route_to("modalidades#edit", :id => "1")
    end

    it "routes to #create" do
      post("/modalidades").should route_to("modalidades#create")
    end

    it "routes to #update" do
      put("/modalidades/1").should route_to("modalidades#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/modalidades/1").should route_to("modalidades#destroy", :id => "1")
    end

  end
end
