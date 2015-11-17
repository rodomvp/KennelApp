module ApplicationHelper
  # Returns the full title of each page
  def full_title(page_title = '')
    base_title = 'Kennel Management Software'
    if page_title.nil? || page_title.empty?
      base_title
    else
      page_title + ' | ' + base_title
    end
  end
end
