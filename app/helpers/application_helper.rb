module ApplicationHelper

  # 渡されたユーザーがカレントユーザーであればtrueを返す
  def current_user?(user)
    user && user == current_user
  end

  def full_title(page_title = '')
    base_title = "読書行動文"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end
