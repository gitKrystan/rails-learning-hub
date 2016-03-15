class SectionsController < ApplicationController
  before_action :set_section, only: [:show, :edit, :update, :destroy]
  before_action :set_chapter_options, only: [:new, :edit]

  # GET /sections
  def index
    @sections = Section.order(:name)
  end

  # GET /sections/1
  def show
  end

  # GET /sections/new
  def new
    @section = Section.new
  end

  # GET /sections/1/edit
  def edit
  end

  # POST /sections
  def create
    @section = Section.new(section_params)

    if @section.save
      redirect_to @section, notice: 'Section was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /sections/1
  def update
    if @section.update(section_params)
      redirect_to @section, notice: 'Section was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /sections/1
  def destroy
    @section.destroy
    redirect_to sections_url, notice: 'Section was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_section
      @section = Section.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def section_params
      params.require(:section).permit(:name, :number, :chapter_id)
    end

    def set_chapter_options
      @chapter_options_array = Chapter.all
        .collect { |chapter| [chapter.name, chapter.id] }
    end
end
