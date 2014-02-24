require "spec_helper"

describe AvaliacaofisicasController do
  describe "routing" do

    it "routes to #index" do
      get("/avaliacaofisicas").should route_to("avaliacaofisicas#index")
    end

    it "routes to #new" do
      get("/avaliacaofisicas/new").should route_to("avaliacaofisicas#new")
    end

    it "routes to #show" do
      get("/avaliacaofisicas/1").should route_to("avaliacaofisicas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/avaliacaofisicas/1/edit").should route_to("avaliacaofisicas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/avaliacaofisicas").should route_to("avaliacaofisicas#create")
    end

    it "routes to #update" do
      put("/avaliacaofisicas/1").should route_to("avaliacaofisicas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/avaliacaofisicas/1").should route_to("avaliacaofisicas#destroy", :id => "1")
    end

  end
end
