class StudentsController < ApplicationController
  expose(:student, attributes: :student_params)
  expose(:students) {Student.all.order('created_at DESC')}
  expose(:student_subject_items) {student.subject_items}

  before_action :authenticate_user!
  skip_before_action :verify_authenticity_token

  def create
    if student.save
      redirect_to student_path(student), notice: I18n.t('shared.created', resource: 'Student')
    else
      render :new
    end
  end

  def update
    if student.update(students_params)
      redirect_to student_path(student), notice: I18n.t('shared.updated', resource: 'Student')
    else
      render :edit
    end
  end

  def destroy
    student.destroy
    redirect_to students_path, notice: I18n.t('shared.deleted', resource: 'Student')
  end

  private

  def students_params
    params.require(:student).permit(:first_name, :last_name, :birthdate, subject_item_ids: [])
  end

end
