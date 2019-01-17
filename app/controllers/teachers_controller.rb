class TeachersController < ApplicationController
  expose(:teacher, attributes: :teacher_params)
  expose(:teachers) {Teacher.all}
  expose(:teacher_subject_items) {teacher.subject_items}

  def create
    if teacher.save
      redirect_to teacher_path(teacher), notice: I18n.t('shared.created', resource: 'Teacher')
    else
      render :new
    end
  end

  def update
    if teacher.update(teacher_params)
      redirect_to teacher_path(teacher), notice: I18n.t('shared.updated', resource: 'Teacher')
    else
      render :edit
    end
  end

  def destroy
    teacher.destroy
    redirect_to teachers_path, notice: I18n.t('shared.deleted', resource: 'Teacher')
  end

  private

  def teacher_params
    params.require(:teacher).permit(:first_name, :last_name, :academic_title, subject_item_ids: [])
  end
end
