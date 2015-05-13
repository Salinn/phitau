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

RSpec.describe CompositesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Composite. As you add validations to Composite, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {
        year: '2015',
        picture: 'www.some_picture.com'
    }
  }

  let(:invalid_attributes) {
    {
        year: nil,
        picture: nil
    }
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CompositesController. Be sure to keep this updated too.
  let(:valid_session) {
    @user = FactoryGirl.create(:user)
    sign_in :user, @user
  }

  describe "GET #index" do
    it "assigns all composites as @composites" do
      composite = Composite.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:composites)).to eq([composite])
    end
  end

  describe "GET #show" do
    it "assigns the requested composite as @composite" do
      composite = Composite.create! valid_attributes
      get :show, {:id => composite.to_param}, valid_session
      expect(assigns(:composite)).to eq(composite)
    end
  end

  describe "GET #new" do
    it "assigns a new composite as @composite" do
      get :new, {}, valid_session
      expect(assigns(:composite)).to be_a_new(Composite)
    end
  end

  describe "GET #edit" do
    it "assigns the requested composite as @composite" do
      composite = Composite.create! valid_attributes
      get :edit, {:id => composite.to_param}, valid_session
      expect(assigns(:composite)).to eq(composite)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Composite" do
        expect {
          post :create, {:composite => valid_attributes}, valid_session
        }.to change(Composite, :count).by(1)
      end

      it "assigns a newly created composite as @composite" do
        post :create, {:composite => valid_attributes}, valid_session
        expect(assigns(:composite)).to be_a(Composite)
        expect(assigns(:composite)).to be_persisted
      end

      it "redirects to the created composite" do
        post :create, {:composite => valid_attributes}, valid_session
        expect(response).to redirect_to(Composite.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved composite as @composite" do
        post :create, {:composite => invalid_attributes}, valid_session
        expect(assigns(:composite)).to be_a_new(Composite)
      end

      it "re-renders the 'new' template" do
        post :create, {:composite => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        {
            year: '2014',
            picture: 'www.some_picture.com'
        }
      }

      it "updates the requested composite" do
        composite = Composite.create! valid_attributes
        put :update, {:id => composite.to_param, :composite => new_attributes}, valid_session
        composite.reload
        expect(composite.attributes).to include( { 'year' => '2014' } )
      end

      it "assigns the requested composite as @composite" do
        composite = Composite.create! valid_attributes
        put :update, {:id => composite.to_param, :composite => valid_attributes}, valid_session
        expect(assigns(:composite)).to eq(composite)
      end

      it "redirects to the composite" do
        composite = Composite.create! valid_attributes
        put :update, {:id => composite.to_param, :composite => valid_attributes}, valid_session
        expect(response).to redirect_to(composite)
      end
    end

    context "with invalid params" do
      it "assigns the composite as @composite" do
        composite = Composite.create! valid_attributes
        put :update, {:id => composite.to_param, :composite => invalid_attributes}, valid_session
        expect(assigns(:composite)).to eq(composite)
      end

      it "re-renders the 'edit' template" do
        composite = Composite.create! valid_attributes
        put :update, {:id => composite.to_param, :composite => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested composite" do
      composite = Composite.create! valid_attributes
      expect {
        delete :destroy, {:id => composite.to_param}, valid_session
      }.to change(Composite, :count).by(-1)
    end

    it "redirects to the composites list" do
      composite = Composite.create! valid_attributes
      delete :destroy, {:id => composite.to_param}, valid_session
      expect(response).to redirect_to(composites_url)
    end
  end

end
