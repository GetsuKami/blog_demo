module ApplicationHelper

  include SessionsHelper
	
	# 修改title.
  def full_title(page_title = '')
    base_title = '书简'
    if page_title.empty?
      base_title
    else
      base_title + " | " + page_title
    end
  end
end
