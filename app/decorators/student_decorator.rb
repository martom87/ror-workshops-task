class StudentDecorator < BaseDecorator
  delegate_all

  def full_name
    "#{first_name} #{last_name}"
  end

  def avg_notes(subject_item)
    student_notes = subject_item.subject_item_notes
    if !student_notes.empty?
      format('%.2f', student_notes.average(:value))
    else
      format('%.2f', 0)
    end
  end

end
