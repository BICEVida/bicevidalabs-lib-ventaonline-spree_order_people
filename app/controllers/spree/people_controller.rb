class Spree::PeopleController < Spree::StoreController

  def show
    @person = Spree::Person.find(params[:id])
  end

  def new
    @person = Spree::Person.new
  end

  def create
    @person = Spree::Person.new(person_params)
    respond_to do |format|
      if @person.save
        format.html { redirect_to @person, notice: 'Person was successfully created.' }
        format.json { render action: 'show', status: :created, location: @person}
      else
        format.html { render action: 'new' }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @person = Spree::Person.find(params[:id])
  end

  def update
    @person = Spree::Person.find(params[:id])
    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to @person, notice: 'Person was successfully updated.' }
        format.json { render action: 'show', status: :ok, location: @person}
      else
        format.html { render action: 'edit' }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @person = Spree::Person.find(params[:id])
    @person.destroy
    respond_to do |format|
      format.html { redirect_to root_path }
      format.json { head :no_content }
    end
  end

  private

  def person_params
    params.require(:person).permit(:firstname, :lastname, :secondlastname, :email, :birthdate, :phone, :cellular)
  end
end
