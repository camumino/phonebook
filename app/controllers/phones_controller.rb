class PhonesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_phone, only: [:edit, :update, :destroy]

  # GET /phones/new
  def new
    @phone = current_user.contacts.find(params[:contact_id]).phones.new
  end

  # GET /phones/1/edit
  def edit
  end

  # POST /phones
  # POST /phones.json
  def create
    @phone = current_user.contacts.find(params[:contact_id]).phones.new(phone_params)

    respond_to do |format|
      if @phone.save
        format.html { redirect_to @phone.contact, notice: 'Phone was successfully created.' }
        format.json { render :show, status: :created, location: @phone }
      else
        format.html { render :new }
        format.json { render json: @phone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phones/1
  # PATCH/PUT /phones/1.json
  def update
    respond_to do |format|
      if @phone.update(phone_params)
        format.html { redirect_to @phone.contact, notice: 'Phone was successfully updated.' }
        format.json { render :show, status: :ok, location: @phone }
      else
        format.html { render :edit }
        format.json { render json: @phone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phones/1
  # DELETE /phones/1.json
  def destroy
    @phone.destroy
    respond_to do |format|
      format.html { redirect_to contact_url, notice: 'Contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phone
      @phone = current_user.contacts.find(params[:contact_id]).phones.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phone_params
      params.require(:phone).permit(:number)
    end
end
