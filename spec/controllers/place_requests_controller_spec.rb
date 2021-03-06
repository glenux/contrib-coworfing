require 'spec_helper'

describe PlaceRequestsController do
  let(:booker) { FactoryGirl.create(:user, :regular) }
  let(:receiver) { FactoryGirl.create(:user, :regular) }

=begin
  describe "GET index" do
    before :each do
      @place_requests = FactoryGirl.create_list(:place_request, 5, booker: booker, receiver: receiver)
    end

    context "with regular user logged in" do
      it "renders the list of place requests" do
        sign_in booker 
        get :index
        assigns(:place_requests).should == @place_requests
      end
    end
  end

  describe "GET show" do
    it "assigns the requested place_request as @place_request" do
      place_request = PlaceRequest.create! valid_attributes
      get :show, {:id => place_request.to_param}, valid_session
      assigns(:place_request).should eq(place_request)
    end
  end

  describe "GET new" do
    it "assigns a new place_request as @place_request" do
      get :new, {}, valid_session
      assigns(:place_request).should be_a_new(PlaceRequest)
    end
  end

  describe "GET edit" do
    it "assigns the requested place_request as @place_request" do
      place_request = PlaceRequest.create! valid_attributes
      get :edit, {:id => place_request.to_param}, valid_session
      assigns(:place_request).should eq(place_request)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new PlaceRequest" do
        expect {
          post :create, {:place_request => valid_attributes}, valid_session
        }.to change(PlaceRequest, :count).by(1)
      end

      it "assigns a newly created place_request as @place_request" do
        post :create, {:place_request => valid_attributes}, valid_session
        assigns(:place_request).should be_a(PlaceRequest)
        assigns(:place_request).should be_persisted
      end

      it "redirects to the created place_request" do
        post :create, {:place_request => valid_attributes}, valid_session
        response.should redirect_to(PlaceRequest.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved place_request as @place_request" do
        # Trigger the behavior that occurs when invalid params are submitted
        PlaceRequest.any_instance.stub(:save).and_return(false)
        post :create, {:place_request => {}}, valid_session
        assigns(:place_request).should be_a_new(PlaceRequest)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        PlaceRequest.any_instance.stub(:save).and_return(false)
        post :create, {:place_request => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested place_request" do
        place_request = PlaceRequest.create! valid_attributes
        # Assuming there are no other place_requests in the database, this
        # specifies that the PlaceRequest created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        PlaceRequest.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => place_request.to_param, :place_request => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested place_request as @place_request" do
        place_request = PlaceRequest.create! valid_attributes
        put :update, {:id => place_request.to_param, :place_request => valid_attributes}, valid_session
        assigns(:place_request).should eq(place_request)
      end

      it "redirects to the place_request" do
        place_request = PlaceRequest.create! valid_attributes
        put :update, {:id => place_request.to_param, :place_request => valid_attributes}, valid_session
        response.should redirect_to(place_request)
      end
    end

    describe "with invalid params" do
      it "assigns the place_request as @place_request" do
        place_request = PlaceRequest.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PlaceRequest.any_instance.stub(:save).and_return(false)
        put :update, {:id => place_request.to_param, :place_request => {}}, valid_session
        assigns(:place_request).should eq(place_request)
      end

      it "re-renders the 'edit' template" do
        place_request = PlaceRequest.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PlaceRequest.any_instance.stub(:save).and_return(false)
        put :update, {:id => place_request.to_param, :place_request => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested place_request" do
      place_request = PlaceRequest.create! valid_attributes
      expect {
        delete :destroy, {:id => place_request.to_param}, valid_session
      }.to change(PlaceRequest, :count).by(-1)
    end

    it "redirects to the place_requests list" do
      place_request = PlaceRequest.create! valid_attributes
      delete :destroy, {:id => place_request.to_param}, valid_session
      response.should redirect_to(place_requests_url)
    end
  end
=end

end
