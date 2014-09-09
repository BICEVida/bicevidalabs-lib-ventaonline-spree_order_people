class Spree::PeopleController < Spree::StoreController
  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def person_params
    params.require(:person).permit(:firstname, :lastname, :secondlastname, :email, :birthdate, :phone, :cellular)
  end
end
