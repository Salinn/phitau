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

RSpec.describe FaqQuestionsController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # FaqQuestion. As you add validations to FaqQuestion, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {
        title: 'Does everyone in your chapter talk, dress and act the same?',
        content: 'We pride ourselves on',
        faq_category_id: 1
    }
  }

  let(:invalid_attributes) {
    {
        title: nil,
        content: nil,
        faq_category_id: nil
    }
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # FaqQuestionsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all faq_questions as @faq_questions" do
      faq_question = FaqQuestion.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:faq_questions)).to eq([faq_question])
    end
  end

  describe "GET show" do
    it "assigns the requested faq_question as @faq_question" do
      faq_question = FaqQuestion.create! valid_attributes
      get :show, {:id => faq_question.to_param}, valid_session
      expect(assigns(:faq_question)).to eq(faq_question)
    end
  end

  describe "GET new" do
    it "assigns a new faq_question as @faq_question" do
      get :new, {}, valid_session
      expect(assigns(:faq_question)).to be_a_new(FaqQuestion)
    end
  end

  describe "GET edit" do
    it "assigns the requested faq_question as @faq_question" do
      faq_question = FaqQuestion.create! valid_attributes
      get :edit, {:id => faq_question.to_param}, valid_session
      expect(assigns(:faq_question)).to eq(faq_question)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new FaqQuestion" do
        expect {
          post :create, {:faq_question => valid_attributes}, valid_session
        }.to change(FaqQuestion, :count).by(1)
      end

      it "assigns a newly created faq_question as @faq_question" do
        post :create, {:faq_question => valid_attributes}, valid_session
        expect(assigns(:faq_question)).to be_a(FaqQuestion)
        expect(assigns(:faq_question)).to be_persisted
      end

      it "redirects to the created faq_question" do
        post :create, {:faq_question => valid_attributes}, valid_session
        expect(response).to redirect_to(FaqQuestion.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved faq_question as @faq_question" do
        post :create, {:faq_question => invalid_attributes}, valid_session
        expect(assigns(:faq_question)).to be_a_new(FaqQuestion)
      end

      it "re-renders the 'new' template" do
        post :create, {:faq_question => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        {
            title: 'Does everyone in your chapter talk, dress and act the same?',
            content: 'We pride ourselves on',
            faq_category_id: 2,
        }
      }

      it "updates the requested faq_question" do
        faq_question = FaqQuestion.create! valid_attributes
        put :update, {:id => faq_question.to_param, :faq_question => new_attributes}, valid_session
        faq_question.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested faq_question as @faq_question" do
        faq_question = FaqQuestion.create! valid_attributes
        put :update, {:id => faq_question.to_param, :faq_question => valid_attributes}, valid_session
        expect(assigns(:faq_question)).to eq(faq_question)
      end

      it "redirects to the faq_question" do
        faq_question = FaqQuestion.create! valid_attributes
        put :update, {:id => faq_question.to_param, :faq_question => valid_attributes}, valid_session
        expect(response).to redirect_to(faq_question)
      end
    end

    describe "with invalid params" do
      it "assigns the faq_question as @faq_question" do
        faq_question = FaqQuestion.create! valid_attributes
        put :update, {:id => faq_question.to_param, :faq_question => invalid_attributes}, valid_session
        expect(assigns(:faq_question)).to eq(faq_question)
      end

      it "re-renders the 'edit' template" do
        faq_question = FaqQuestion.create! valid_attributes
        put :update, {:id => faq_question.to_param, :faq_question => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested faq_question" do
      faq_question = FaqQuestion.create! valid_attributes
      expect {
        delete :destroy, {:id => faq_question.to_param}, valid_session
      }.to change(FaqQuestion, :count).by(-1)
    end

    it "redirects to the faq_questions list" do
      faq_question = FaqQuestion.create! valid_attributes
      delete :destroy, {:id => faq_question.to_param}, valid_session
      expect(response).to redirect_to(faq_questions_url)
    end
  end

end
