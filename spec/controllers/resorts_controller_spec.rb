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

  describe "POST #create" do
    context "with valid params" do
      it "creates a new resort" do
        expect {
          post :create, {:resort => attributes_for(:resort)}
        }.to change(Resort, :count).by(1)
      end

      it "assigns a newly created resort as @resort" do
        post :create, {:resort => attributes_for(:resort)}
        expect(assigns(:resort)).to be_a(Resort)
        expect(assigns(:resort)).to be_persisted
      end

      it "redirects to the created resort" do
        post :create, {:resort => attributes_for(:resort)}
        expect(response).to redirect_to(Resort.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved resort as @resort" do
        post :create, {:resort => attributes_for(:resort, name: nil)}
        expect(assigns(:resort)).to be_a_new(Resort)
      end

      it "re-renders the 'new' template" do
        post :create, {:resort => attributes_for(:resort, name: nil)}
        expect(response).to render_template("new")
      end
    end
  end


  describe "PUT #update" do
    context "with valid params" do
      it "updates the requested resort" do
        resort = create(:resort)
        put :update, {:id => resort.to_param, :resort => attributes_for(:resort, name: "New name")}
        resort.reload
        expect(resort.name).to eq("New name")
      end

      it "assigns the requested resort as @resort" do
        resort = create(:resort)
        put :update, {:id => resort.to_param, :resort => attributes_for(:resort, name: "New name")}
        expect(assigns(:resort)).to eq(resort)
      end

      it "redirects to the resort" do
        resort = create(:resort)
        put :update, {:id => resort.to_param, :resort => attributes_for(:resort, name: "New name")}
        expect(response).to redirect_to(resort)
      end
    end

    context "with invalid params" do
      it "assigns the resort as @resort" do
        resort = create(:resort)
        put :update, {:id => resort.to_param, :resort => attributes_for(:resort, name: nil)}
        expect(assigns(:resort)).to eq(resort)
      end

      it "re-renders the 'edit' template" do
        resort = create(:resort)
        put :update, {:id => resort.to_param, :resort => attributes_for(:resort, name: nil)}
        expect(response).to render_template("edit")
      end
    end
  end
end

