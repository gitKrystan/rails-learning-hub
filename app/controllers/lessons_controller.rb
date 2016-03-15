class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show, :edit, :update, :destroy]
  before_action :set_section_options, only: [:new, :edit]

  # GET /lessons
  def index
    @lessons = Lesson.all
  end

  # GET /lessons/1
  def show
    has_section = @lesson.section
    @next_lesson = @lesson.next if has_section
    @previous_lesson = @lesson.previous if has_section
    if @lesson.content
      markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML,
                                         autolink: true,
                                         tables: true)
      @content_markdown = markdown.render(@lesson.content).html_safe
    end
  end

  # GET /lessons/new
  def new
    @lesson = Lesson.new
  end

  # GET /lessons/1/edit
  def edit
  end

  # POST /lessons
  def create
    @lesson = Lesson.new(lesson_params)

    if @lesson.save
      redirect_to @lesson, notice: 'Lesson was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /lessons/1
  def update
    if @lesson.update(lesson_params)
      redirect_to @lesson, notice: 'Lesson was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /lessons/1
  def destroy
    @lesson.destroy
    redirect_to lessons_url, notice: 'Lesson was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_lesson
    @lesson = Lesson.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def lesson_params
    params.require(:lesson).permit(:name, :number, :content, :section_id)
  end

  def set_section_options
    @section_options_array = Section.all.collect { |s| [s.name, s.id] }
  end
end
