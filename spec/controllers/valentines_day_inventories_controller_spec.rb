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

RSpec.describe ValentinesDayInventoriesController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # ValentinesDayInventory. As you add validations to ValentinesDayInventory, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {
        total_red_flowers: 50,
        total_white_flowers: 50,
        total_pink_flowers: 50,
        total_large_stuffed_animials: 20,
        total_medium_stuffed_animials: 30,
        total_small_stuffed_animials: 40,
        red_flower_price: 2,
        white_flower_price: 2,
        pink_flower_price: 2,
        large_stuffed_animial_price: 4,
        medium_stuffed_animial_price: 3,
        small_stuffed_animial_price: 2,
        current_year: '2014',
        total_cost: '0'
    }
  }

  let(:invalid_attributes) {
    {
        total_red_flowers: nil,
        total_white_flowers: nil,
        total_pink_flowers: nil,
        total_large_stuffed_animials: nil,
        total_medium_stuffed_animials: nil,
        total_small_stuffed_animials: nil,
        red_flower_price: nil,
        white_flower_price: nil,
        pink_flower_price: nil,
        large_stuffed_animial_price: nil,
        medium_stuffed_animial_price: nil,
        small_stuffed_animial_price: nil,
        current_year: nil,
        total_cost: nil
    }
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ValentinesDayInventoriesController. Be sure to keep this updated too.
  let(:valid_session) {
    @user = FactoryGirl.create(:user)
    sign_in :user, @user
  }

  describe "GET index" do
    it "assigns all valentines_day_inventories as @valentines_day_inventories" do
      valentines_day_inventory = ValentinesDayInventory.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:valentines_day_inventories)).to eq([valentines_day_inventory])
    end
  end

  describe "GET show" do
    it "assigns the requested valentines_day_inventory as @valentines_day_inventory" do
      valentines_day_inventory = ValentinesDayInventory.create! valid_attributes
      get :show, {:id => valentines_day_inventory.to_param}, valid_session
      expect(assigns(:valentines_day_inventory)).to eq(valentines_day_inventory)
    end
  end

  describe "GET new" do
    it "assigns a new valentines_day_inventory as @valentines_day_inventory" do
      get :new, {}, valid_session
      expect(assigns(:valentines_day_inventory)).to be_a_new(ValentinesDayInventory)
    end
  end

  describe "GET edit" do
    it "assigns the requested valentines_day_inventory as @valentines_day_inventory" do
      valentines_day_inventory = ValentinesDayInventory.create! valid_attributes
      get :edit, {:id => valentines_day_inventory.to_param}, valid_session
      expect(assigns(:valentines_day_inventory)).to eq(valentines_day_inventory)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ValentinesDayInventory" do
        expect {
          post :create, {:valentines_day_inventory => valid_attributes}, valid_session
        }.to change(ValentinesDayInventory, :count).by(1)
      end

      it "assigns a newly created valentines_day_inventory as @valentines_day_inventory" do
        post :create, {:valentines_day_inventory => valid_attributes}, valid_session
        expect(assigns(:valentines_day_inventory)).to be_a(ValentinesDayInventory)
        expect(assigns(:valentines_day_inventory)).to be_persisted
      end

      it "redirects to the created valentines_day_inventory" do
        post :create, {:valentines_day_inventory => valid_attributes}, valid_session
        expect(response).to redirect_to(ValentinesDayInventory.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved valentines_day_inventory as @valentines_day_inventory" do
        post :create, {:valentines_day_inventory => invalid_attributes}, valid_session
        expect(assigns(:valentines_day_inventory)).to be_a_new(ValentinesDayInventory)
      end

      it "re-renders the 'new' template" do
        post :create, {:valentines_day_inventory => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        {
            total_red_flowers: 50,
            total_white_flowers: 50,
            total_pink_flowers: 50,
            total_large_stuffed_animials: 10,
            total_medium_stuffed_animials: 20,
            total_small_stuffed_animials: 40,
            red_flower_price: 2,
            white_flower_price: 2,
            pink_flower_price: 2,
            large_stuffed_animial_price: 4,
            medium_stuffed_animial_price: 3,
            small_stuffed_animial_price: 2,
            current_year: '2014',
            total_cost: '0'
        }
      }

      it "updates the requested valentines_day_inventory" do
        valentines_day_inventory = ValentinesDayInventory.create! valid_attributes
        put :update, {:id => valentines_day_inventory.to_param, :valentines_day_inventory => new_attributes}, valid_session
        valentines_day_inventory.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested valentines_day_inventory as @valentines_day_inventory" do
        valentines_day_inventory = ValentinesDayInventory.create! valid_attributes
        put :update, {:id => valentines_day_inventory.to_param, :valentines_day_inventory => valid_attributes}, valid_session
        expect(assigns(:valentines_day_inventory)).to eq(valentines_day_inventory)
      end

      it "redirects to the valentines_day_inventory" do
        valentines_day_inventory = ValentinesDayInventory.create! valid_attributes
        put :update, {:id => valentines_day_inventory.to_param, :valentines_day_inventory => valid_attributes}, valid_session
        expect(response).to redirect_to(valentines_day_inventory)
      end
    end

    describe "with invalid params" do
      it "assigns the valentines_day_inventory as @valentines_day_inventory" do
        valentines_day_inventory = ValentinesDayInventory.create! valid_attributes
        put :update, {:id => valentines_day_inventory.to_param, :valentines_day_inventory => invalid_attributes}, valid_session
        expect(assigns(:valentines_day_inventory)).to eq(valentines_day_inventory)
      end

      it "re-renders the 'edit' template" do
        valentines_day_inventory = ValentinesDayInventory.create! valid_attributes
        put :update, {:id => valentines_day_inventory.to_param, :valentines_day_inventory => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested valentines_day_inventory" do
      valentines_day_inventory = ValentinesDayInventory.create! valid_attributes
      expect {
        delete :destroy, {:id => valentines_day_inventory.to_param}, valid_session
      }.to change(ValentinesDayInventory, :count).by(-1)
    end

    it "redirects to the valentines_day_inventories list" do
      valentines_day_inventory = ValentinesDayInventory.create! valid_attributes
      delete :destroy, {:id => valentines_day_inventory.to_param}, valid_session
      expect(response).to redirect_to(valentines_day_inventories_url)
    end
  end

end
