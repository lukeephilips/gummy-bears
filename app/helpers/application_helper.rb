module ApplicationHelper

  def flash_class(level)
    if (level == 'danger')
      "alert alert-danger"
    elsif (level == 'success')
      "alert alert-success"
    end
  end
end
