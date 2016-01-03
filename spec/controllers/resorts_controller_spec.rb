require 'rails_helper'

RSpec.describe ResortsController, type: :controller do
  describe "GET #index" do 
    it "assigns all resorts as @resorts and renders the index template" do
      resort = create(:resort)

      get(:index)

      expect(assigns(:resorts)).to eq([resort])
      expect(response).to render_template("index")
    end
  end

  describe "GET #show" do
    it "assigns the requested resort as @resort and renders the show template" do
      resort = create(:resort)
      get(:show, {:id => resort.to_param})
      expect(assigns(:resort)).to eq(resort)
      expect(response).to render_template("show")
    end
  end

  describe "GET #new" do 
    it "assigns a new resort to @resort" do 
      resort = create(:resort)
      get(:new)
      expect(assigns(:resort)).to be_a_new(Resort)
    end
  end

  describe "GET #edit" do 
    it "assigns the requested resort as @resort" do 
      resort = create(:resort)
      get(:edit, {:id => resort.to_param})
      expect(assigns(:resort)).to eq(resort)
    end 
  end


end
