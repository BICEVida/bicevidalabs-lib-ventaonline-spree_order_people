require 'spec_helper'

describe Spree::PeopleController do
  describe 'GET new' do
    it "return 200 status code" do
      person = create(:person)
      get :show, {person: person.to_param}
      expect(response.status).to eq(200)
    end
  end


  describe 'GET new' do
    it "assigns a new person as @person" do
      get :new
      expect(assigns(:person)).to be_a_new(Spree::Person)
    end
  end

  describe "GET edit" do
    it "assigns the requested person as @person" do
      person = create(:person)
      get :edit, {person: person.to_param}
      expect(assigns(:person)).to eq(person)
    end
  end
end