class RoomsController < ApplicationController
  before_action :set_room, only: [:show, :edit, :update, :destroy, :room_apply]

  # GET /rooms
  # GET /rooms.json
  def index
    @rooms = Room.includes(:room_category, :user).all
    @categories = RoomCategory.all
  end

  # GET /rooms/1
  # GET /rooms/1.json
  def show
      @applies = @room.applies.includes(:user).order(id: :desc)
  end

  # GET /rooms/new
  def new
    @room = Room.new
    @categories = RoomCategory.all
  end

  # GET /rooms/1/edit
  def edit
  end

  # POST /rooms
  # POST /rooms.json
  def create
      
    @room = Room.new(room_params)
    
    @room.user_id = current_user&.id
      

    respond_to do |format|
      if @room.save
        format.html { redirect_to @room, notice: 'Room was successfully created.' }
        format.json { render :show, status: :created, location: @room }
      else
        format.html { redirect_to rooms_path, notice: 'Room was failed.' }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rooms/1
  # PATCH/PUT /rooms/1.json
  def update
    respond_to do |format|
      if @room.update(room_params)
        format.html { redirect_to @room, notice: 'Room was successfully updated.' }
        format.json { render :show, status: :ok, location: @room }
      else
        format.html { render :edit }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rooms/1
  # DELETE /rooms/1.json
  def destroy
    @room.destroy
    respond_to do |format|
      format.html { redirect_to rooms_url, notice: 'Room was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
    
  def room_apply 
      puts "여기"*10
      puts params
      puts current_user
      Apply.create(user: current_user, room: @room, comment: params["apply"]["comment"])
      redirect_to room_path(@room)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room
      @room = Room.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def room_params
      params.require(:room).permit(:title, :content, :room_category_id, :expired_at)
    end
end
