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

RSpec.describe AlumniNewsLettersController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # AlumniNewsLetter. As you add validations to AlumniNewsLetter, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {
        released_date: Date.now,
        news_letter_html: 'some link'
    }
  }

  let(:invalid_attributes) {
    {
        released_date: nil,
        news_letter_html: nil
    }
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AlumniNewsLettersController. Be sure to keep this updated too.
  let(:valid_session) {
    @user = FactoryGirl.create(:user)
    sign_in :user, @user
  }

  describe "GET index" do
    it "assigns all alumni_news_letters as @alumni_news_letters" do
      alumni_news_letter = AlumniNewsLetter.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:alumni_news_letters)).to eq([alumni_news_letter])
    end
  end

  describe "GET show" do
    it "assigns the requested alumni_news_letter as @alumni_news_letter" do
      alumni_news_letter = AlumniNewsLetter.create! valid_attributes
      get :show, {:id => alumni_news_letter.to_param}, valid_session
      expect(assigns(:alumni_news_letter)).to eq(alumni_news_letter)
    end
  end

  describe "GET new" do
    it "assigns a new alumni_news_letter as @alumni_news_letter" do
      get :new, {}, valid_session
      expect(assigns(:alumni_news_letter)).to be_a_new(AlumniNewsLetter)
    end
  end

  describe "GET edit" do
    it "assigns the requested alumni_news_letter as @alumni_news_letter" do
      alumni_news_letter = AlumniNewsLetter.create! valid_attributes
      get :edit, {:id => alumni_news_letter.to_param}, valid_session
      expect(assigns(:alumni_news_letter)).to eq(alumni_news_letter)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new AlumniNewsLetter" do
        expect {
          post :create, {:alumni_news_letter => valid_attributes}, valid_session
        }.to change(AlumniNewsLetter, :count).by(1)
      end

      it "assigns a newly created alumni_news_letter as @alumni_news_letter" do
        post :create, {:alumni_news_letter => valid_attributes}, valid_session
        expect(assigns(:alumni_news_letter)).to be_a(AlumniNewsLetter)
        expect(assigns(:alumni_news_letter)).to be_persisted
      end

      it "redirects to the created alumni_news_letter" do
        post :create, {:alumni_news_letter => valid_attributes}, valid_session
        expect(response).to redirect_to(AlumniNewsLetter.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved alumni_news_letter as @alumni_news_letter" do
        post :create, {:alumni_news_letter => invalid_attributes}, valid_session
        expect(assigns(:alumni_news_letter)).to be_a_new(AlumniNewsLetter)
      end

      it "re-renders the 'new' template" do
        post :create, {:alumni_news_letter => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        {
            released_date: Date.now,
            news_letter_html: 'some other link'
        }
      }

      it "updates the requested alumni_news_letter" do
        alumni_news_letter = AlumniNewsLetter.create! valid_attributes
        put :update, {:id => alumni_news_letter.to_param, :alumni_news_letter => new_attributes}, valid_session
        alumni_news_letter.reload
        expect(alumni_news_letter.attributes).to include( { 'news_letter_html' => 'some other link' } )
      end

      it "assigns the requested alumni_news_letter as @alumni_news_letter" do
        alumni_news_letter = AlumniNewsLetter.create! valid_attributes
        put :update, {:id => alumni_news_letter.to_param, :alumni_news_letter => valid_attributes}, valid_session
        expect(assigns(:alumni_news_letter)).to eq(alumni_news_letter)
      end

      it "redirects to the alumni_news_letter" do
        alumni_news_letter = AlumniNewsLetter.create! valid_attributes
        put :update, {:id => alumni_news_letter.to_param, :alumni_news_letter => valid_attributes}, valid_session
        expect(response).to redirect_to(alumni_news_letter)
      end
    end

    describe "with invalid params" do
      it "assigns the alumni_news_letter as @alumni_news_letter" do
        alumni_news_letter = AlumniNewsLetter.create! valid_attributes
        put :update, {:id => alumni_news_letter.to_param, :alumni_news_letter => invalid_attributes}, valid_session
        expect(assigns(:alumni_news_letter)).to eq(alumni_news_letter)
      end

      it "re-renders the 'edit' template" do
        alumni_news_letter = AlumniNewsLetter.create! valid_attributes
        put :update, {:id => alumni_news_letter.to_param, :alumni_news_letter => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested alumni_news_letter" do
      alumni_news_letter = AlumniNewsLetter.create! valid_attributes
      expect {
        delete :destroy, {:id => alumni_news_letter.to_param}, valid_session
      }.to change(AlumniNewsLetter, :count).by(-1)
    end

    it "redirects to the alumni_news_letters list" do
      alumni_news_letter = AlumniNewsLetter.create! valid_attributes
      delete :destroy, {:id => alumni_news_letter.to_param}, valid_session
      expect(response).to redirect_to(alumni_news_letters_url)
    end
  end

end
