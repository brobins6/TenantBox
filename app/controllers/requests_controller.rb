#controller for requests
class RequestsController < ApplicationController
   before_action :set_request, only: [:show, :edit, :update, :destroy]

  def requests
		@request = Request.new	
  end
  
#   def create
# 		@request = Request.new(message_params)
# 	end

  # GET /requests
  # GET /requests.json
  def index
    @requests = Request.all.where(name: current_user.name).order(:created_at)
  end
  
  def tenant_maintenance
    @requests = Request.all.where(name: current_user.name).order(:created_at)
  end

  # # GET /requests/1
  # # GET /requests/1.json
  # def show
  # end

  # GET /requests/new
  def new
    @request = Request.new
  end

  # GET /requests/1/edit
  def edit
  end

  # POST /requests
  # POST /requests.json
  def create
    @request = Request.new(request_params)
    @request.status = "Incomplete"
    respond_to do |format|
      if @request.save
        #@request.status = "Incomplete"
        format.html { redirect_to @request, notice: 'Request was successfully created.' }
        format.json { render :show, status: :created, location: @request }
        updateTenant = Tenant.find_by_tenant(current_user.name)
			  @update = (updateTenant.maintenance).to_i + 1
			  Tenant.create!(:tenant => updateTenant.tenant,:email => updateTenant.email, :rent => updateTenant.rent, :unreadMess => updateTenant.unreadMess, :maintenance=>
        @update, :propLoc => updateTenant.propLoc)
        updateTenant.destroy
      else
        format.html { render :new }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requests/1
  # PATCH/PUT /requests/1.json
  def update
    respond_to do |format|
      if @request.update(request_params)
        format.html { redirect_to @request, notice: 'Request was successfully updated.' }
        format.json { render :show, status: :ok, location: @request }
      else
        format.html { render :edit }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requests/1
  # DELETE /requests/1.json
  def destroy
    @request.destroy
    respond_to do |format|
      format.html { redirect_to requests_url, notice: 'Request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

	def display_name(email)
		User.find_by(email: email).name
	end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_params
      params.require(:request).permit(:name, :email, :address, :option, :body, :status)

    end
end
