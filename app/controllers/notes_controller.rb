class NotesController < ApplicationController
  before_action :set_user
  before_action :set_date, only: [:new]
  before_action :set_note, only: [:show, :edit, :update, :destroy]

  def index
    @notes = @user.notes
  end

  def show
  end

  def new
    @note = @user.notes.new(date: @date)
  end

  def edit
  end

  def create
    @note = @user.notes.build(note_params)

    respond_to do |format|
      if @note.save
        format.html { redirect_to [@user, @note], notice: 'Note was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @note.update(note_params)
        format.html { redirect_to [@user, @note], notice: 'Note was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @note.destroy
    respond_to do |format|
      format.html { redirect_to user_notes_url(@user), notice: 'Note was successfully destroyed.' }
    end
  end

  private
    def set_user
      @user = User.find(params[:user_id])
    end

    def set_date
      @date = params[:date] ? Time.parse(params[:date]) : Time.now
    end

    def set_note
      def set_user
        @user = User.find(params[:user_id])
      end
      @note = @user.notes.find(params[:id])
    end

    def note_params
      params.require(:note).permit(:date, :content)
    end
end
