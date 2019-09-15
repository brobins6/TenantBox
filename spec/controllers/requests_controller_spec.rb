require 'rails_helper'

RSpec.describe RequestsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Request. As you add validations to Request, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {"name" => "Tom", "email" => "tom@test.com", "address" => "1234 asdsk st.", "option" => "dishwasher", "body" => "Hello?", "status" => "incomplete"}
  }

  let(:invalid_attributes) {
    {"name" => 33, "email" => "tom","address" => 52, "option" => 1, "body" => "", "status" => "yellow"}
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # RequestsController. Be sure to keep this updated too.
  let(:valid_session) { {} }
  
  describe "#requests" do
    it "should be defined" do
      expect { 	@request = Request.new }.not_to raise_error
    end
  end
  
  describe "#create" do
    before do
      @sender = User.new(name: "Tom", email: "tom@test.com", password: "Password123", group: "tenant")
      @sender.save
      @receiver = User.new(name: "Sara", email: "sara@test.com", password: "Password123", group: "landlord")
      @receiver.save
      @request = Request.new( name: "Tom", address: "1234 asdsk st.", email: "tom@test.com", option: "dishwasher", body: "Hello?", status: "incomplete")
      @request.save
    end
    
  #   describe "request" do
  #     it "puts the request in the users requests" do
  #       expect(Request.where(email: @sender.email)).to include(@request)
  #       # expect(Request.all).to include(@request)
  #     end
  #   end
  end
  
  # describe "GET #index" do
  #   it "assigns all requests as @requests" do
  #     request = Request.create! valid_attributes
  #     get :index, {}, valid_session
  #     expect(assigns(:requests)).to eq([request])
  #   end
  # end

  describe "GET #show" do
    it "assigns the requested request as @request" do
      request = Request.create! valid_attributes
      get :show, {:id => request.to_param}, valid_session
      expect(assigns(:request)).to eq(request)
    end
  end

  describe "GET #new" do
    it "assigns a new request as @request" do
      get :new, {}, valid_session
      expect(assigns(:request)).to be_a_new(Request)
    end
  end

  describe "GET #edit" do
    it "assigns the requested request as @request" do
      request = Request.create! valid_attributes
      get :edit, {:id => request.to_param}, valid_session
      expect(assigns(:request)).to eq(request)
    end
  end

  # describe "POST #create" do
  #   context "with valid params" do
  #     it "creates a new Request" do
  #       expect {
  #         post :create, {:request => valid_attributes}, valid_session
  #       }.to change(Request, :count).by(1)
  #     end

  #     it "assigns a newly created request as @request" do
  #       post :create, {:request => valid_attributes}, valid_session
  #       expect(assigns(:request)).to be_a(Request)
  #       expect(assigns(:request)).to be_persisted
  #     end

  #     it "redirects to the created request" do
  #       post :create, {:request => valid_attributes}, valid_session
  #       expect(response).to redirect_to(Request.last)
  #     end
  #   end

  #   context "with invalid params" do
  #     it "assigns a newly created but unsaved request as @request" do
  #       post :create, {:request => invalid_attributes}, valid_session
  #       expect(assigns(:request)).to be_a_new(Request)
  #     end

  #     it "re-renders the 'new' template" do
  #       post :create, {:request => invalid_attributes}, valid_session
  #       expect(response).to render_template("new")
  #     end
  #   end
  # end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        {"name" => "Sara", "address" => "2313 djasldj st.", "email" => "sara@test.com", "option" => "dryer", "body" => "Hello?????", "status" => "complete"}
      }

      it "updates the requested request" do
        request = Request.create! valid_attributes
        put :update, {:id => request.to_param, :request => new_attributes}, valid_session
        request.reload
        expect(assigns(:request).attributes["Sara"]).to match(new_attributes[:name])
      end

      it "assigns the requested request as @request" do
        request = Request.create! valid_attributes
        put :update, {:id => request.to_param, :request => valid_attributes}, valid_session
        expect(assigns(:request)).to eq(request)
      end

      it "redirects to the request" do
        request = Request.create! valid_attributes
        put :update, {:id => request.to_param, :request => valid_attributes}, valid_session
        expect(response).to redirect_to(request)
      end
    end

    context "with invalid params" do
      it "assigns the request as @request" do
        request = Request.create! valid_attributes
        put :update, {:id => request.to_param, :request => invalid_attributes}, valid_session
        expect(assigns(:request)).to eq(request)
      end

      it "re-renders the 'edit' template" do
        request = Request.create! valid_attributes
        put :update, {:id => request.to_param, :request => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested request" do
      request = Request.create! valid_attributes
      expect {
        delete :destroy, {:id => request.to_param}, valid_session
      }.to change(Request, :count).by(-1)
    end

    it "redirects to the requests list" do
      request = Request.create! valid_attributes
      delete :destroy, {:id => request.to_param}, valid_session
      expect(response).to redirect_to(requests_url)
    end
  end

end