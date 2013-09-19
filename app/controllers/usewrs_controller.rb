class UsewrsController < ApplicationController
  # GET /usewrs
  # GET /usewrs.json
  def index
    @usewrs = Usewr.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @usewrs }
    end
  end

  # GET /usewrs/1
  # GET /usewrs/1.json
  def show
    @usewr = Usewr.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @usewr }
    end
  end

  # GET /usewrs/new
  # GET /usewrs/new.json
  def new
    @usewr = Usewr.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @usewr }
    end
  end

  # GET /usewrs/1/edit
  def edit
    @usewr = Usewr.find(params[:id])
  end

  # POST /usewrs
  # POST /usewrs.json
  def create
    @usewr = Usewr.new(params[:usewr])

    respond_to do |format|
      if @usewr.save
        format.html { redirect_to @usewr, notice: 'Usewr was successfully created.' }
        format.json { render json: @usewr, status: :created, location: @usewr }
      else
        format.html { render action: "new" }
        format.json { render json: @usewr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /usewrs/1
  # PUT /usewrs/1.json
  def update
    @usewr = Usewr.find(params[:id])

    respond_to do |format|
      if @usewr.update_attributes(params[:usewr])
        format.html { redirect_to @usewr, notice: 'Usewr was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @usewr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usewrs/1
  # DELETE /usewrs/1.json
  def destroy
    @usewr = Usewr.find(params[:id])
    @usewr.destroy

    respond_to do |format|
      format.html { redirect_to usewrs_url }
      format.json { head :no_content }
    end
  end
end
