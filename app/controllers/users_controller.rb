class UsersController < ApplicationController
  # GET /users
  # GET /users.json
  skip_before_filter :authorize, only: [:create, :new]

  def index
    @users = User.order(:name)
    @cart = current_cart
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show                                        #for 1 person, show exects no
    if current_user.admin                          #if person req is adm  ln 21 will run with any users info
      @user = User.find(params[:id])
    else
      @user = current_user   #they ll only get their own
    end

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end


  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])

    respond_to do |format|                    #not in tut
      if @user.save
        format.html { redirect_to products_url,notice: "User #{@user.name} was successfully created." }
        format.json { render json: @user,status: :created, location: @user }     #not in tut
      else
        format.html { render action: "new" }  #diff in tut
        format.json { render json: @user.errors, status: :unprocessable_entity }   #not in tut
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to users_url,
                                  notice: "User #{@user.name} was successfully updated." }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors,
                             status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    begin
      @user.destroy
      flash[:notice] = "User #{@user.name} deleted"
    rescue Exception => e
      flash[:notice] = e.message
    end
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end
end