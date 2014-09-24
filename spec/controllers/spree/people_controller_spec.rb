require 'spec_helper'

describe Spree::PeopleController do

  def valid_attributes
    FactoryGirl.attributes_for(:person)
  end

  def invalid_attributes
    FactoryGirl.attributes_for(:invalid_person).merge({firstname: ''})
  end


  describe 'GET show' do
    it "return 200 status code" do
      person = create(:person)
      spree_get :show, {id: person.id}
      expect(response.status).to eq(200)
    end
  end


  describe 'GET new' do
    it "assigns a new person as @person" do
      spree_get :new
      expect(assigns(:person)).to be_a_new(Spree::Person)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Spree::Person" do
        expect {
          spree_post :create, {:person => valid_attributes}
        }.to change(Spree::Person, :count).by(1)
      end

      it "assigns a newly created person as @person" do
        spree_post :create, {:person => valid_attributes}
        expect(assigns(:person)).to be_a(Spree::Person)
        expect(assigns(:person)).to be_persisted
      end

      it "redirects to the created person" do
        spree_post :create, {:person => valid_attributes}
        expect(response).to redirect_to(Spree::Person.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved person as @person" do
        # Trigger the behavior that occurs when invalid params are submitted
        spree_post :create, {:person => invalid_attributes}
        expect(assigns(:person)).to be_a_new(Spree::Person)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        spree_post :create, {:person => invalid_attributes}
        expect(response).to render_template("new")
      end
    end
  end

  describe "GET edit" do
    it "assigns the requested person as @person" do
      person = create(:person)
      spree_get :edit, {id: person.id}
      expect(assigns(:person)).to eq(person)
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested person" do
        person = create(:person)
        spree_put :update, {id: person.id, person: { firstname: "AnotherName" }}
      end

      it "assigns the requested person as @person" do
        person = create(:person)
        spree_put :update, {id: person.id, person: valid_attributes}
        expect(assigns(:person)).to eq(person)
      end

      it "redirects to the person" do
        person = create(:person)
        spree_put :update, {id: person.id, person: valid_attributes}
        expect(response).to redirect_to(person)
      end
    end

    describe "with invalid params" do
      it "assigns the requested person as @person" do
        person = create(:person)
        # Trigger the behavior that occurs when invalid params are submitted
        #User.any_instance.stub(:save).and_return(false)
        spree_put :update, {id: person.id, person: invalid_attributes}
        expect(assigns(:person)).to eq(person)
      end

      it "re-renders the 'edit' template" do
        person = create(:person)
        # Trigger the behavior that occurs when invalid params are submitted
        #User.any_instance.stub(:save).and_return(false)
        spree_put :update, {id: person.id, person: invalid_attributes}
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested person" do
      person = create(:person)
      expect {
        spree_delete :destroy, {:id => person.id}
      }.to change(Spree::Person, :count).by(-1)
    end

    it "redirects to root path" do
      person = create(:person)
      spree_delete :destroy, {:id => person.id}
      expect(response).to redirect_to('/')
    end
  end
end