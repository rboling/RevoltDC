class PoliticianRequestsController < ApplicationController
  # GET /politician_requests
  # GET /politician_requests.json
  def index
    @politician_requests = PoliticianRequest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @politician_requests }
    end
  end

  # GET /politician_requests/1
  # GET /politician_requests/1.json
  def show
    @politician_request = PoliticianRequest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @politician_request }
    end
  end

  # GET /politician_requests/new
  # GET /politician_requests/new.json
  def new
    @politician_request = PoliticianRequest.new
    @user = @politician_request.user
    #@tracker_users = @politician_request.users.build


    respond_to do |format|
      format.html  
      format.json { render json: @politician_request }
    end
  end

  # GET /politician_requests/1/edit
  def edit
    @politician_request = PoliticianRequest.find(params[:id])
  end

  # POST /politician_requests
  # POST /politician_requests.json
  def create
    @politician_request = PoliticianRequest.new(params[:politician_request])
    the_id =  params[:user]
    lookup_id = the_id.to_i
    @politician_request.user_id = lookup_id

    respond_to do |format|
      if @politician_request.save
        format.html { redirect_to @politician_request, notice: 'Politician request was successfully created.' }
        format.json { render json: @politician_request, status: :created, location: @politician_request }
      else
        format.html { render action: "new" }
        format.json { render json: @politician_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /politician_requests/1
  # PUT /politician_requests/1.json
  def update
    @politician_request = PoliticianRequest.find(params[:id])

    respond_to do |format|
      if @politician_request.update_attributes(params[:politician_request])
        format.html { redirect_to @politician_request, notice: 'Politician request was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @politician_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /politician_requests/1
  # DELETE /politician_requests/1.json
  def destroy
    @politician_request = PoliticianRequest.find(params[:id])
    @politician_request.destroy

    respond_to do |format|
      format.html { redirect_to politician_requests_url }
      format.json { head :no_content }
    end
  end
end
