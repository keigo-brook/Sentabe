require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe DataController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Datum. As you add validations to Datum, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DataController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all data as @data" do
      datum = Datum.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:data)).to eq([datum])
    end
  end

  describe "GET #show" do
    it "assigns the requested datum as @datum" do
      datum = Datum.create! valid_attributes
      get :show, {:id => datum.to_param}, valid_session
      expect(assigns(:datum)).to eq(datum)
    end
  end

  describe "GET #new" do
    it "assigns a new datum as @datum" do
      get :new, {}, valid_session
      expect(assigns(:datum)).to be_a_new(Datum)
    end
  end

  describe "GET #edit" do
    it "assigns the requested datum as @datum" do
      datum = Datum.create! valid_attributes
      get :edit, {:id => datum.to_param}, valid_session
      expect(assigns(:datum)).to eq(datum)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Datum" do
        expect {
          post :create, {:datum => valid_attributes}, valid_session
        }.to change(Datum, :count).by(1)
      end

      it "assigns a newly created datum as @datum" do
        post :create, {:datum => valid_attributes}, valid_session
        expect(assigns(:datum)).to be_a(Datum)
        expect(assigns(:datum)).to be_persisted
      end

      it "redirects to the created datum" do
        post :create, {:datum => valid_attributes}, valid_session
        expect(response).to redirect_to(Datum.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved datum as @datum" do
        post :create, {:datum => invalid_attributes}, valid_session
        expect(assigns(:datum)).to be_a_new(Datum)
      end

      it "re-renders the 'new' template" do
        post :create, {:datum => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested datum" do
        datum = Datum.create! valid_attributes
        put :update, {:id => datum.to_param, :datum => new_attributes}, valid_session
        datum.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested datum as @datum" do
        datum = Datum.create! valid_attributes
        put :update, {:id => datum.to_param, :datum => valid_attributes}, valid_session
        expect(assigns(:datum)).to eq(datum)
      end

      it "redirects to the datum" do
        datum = Datum.create! valid_attributes
        put :update, {:id => datum.to_param, :datum => valid_attributes}, valid_session
        expect(response).to redirect_to(datum)
      end
    end

    context "with invalid params" do
      it "assigns the datum as @datum" do
        datum = Datum.create! valid_attributes
        put :update, {:id => datum.to_param, :datum => invalid_attributes}, valid_session
        expect(assigns(:datum)).to eq(datum)
      end

      it "re-renders the 'edit' template" do
        datum = Datum.create! valid_attributes
        put :update, {:id => datum.to_param, :datum => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested datum" do
      datum = Datum.create! valid_attributes
      expect {
        delete :destroy, {:id => datum.to_param}, valid_session
      }.to change(Datum, :count).by(-1)
    end

    it "redirects to the data list" do
      datum = Datum.create! valid_attributes
      delete :destroy, {:id => datum.to_param}, valid_session
      expect(response).to redirect_to(data_url)
    end
  end

end