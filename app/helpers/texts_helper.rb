module TextsHelper
  def page_title
    if params[:genre] == nil
      "Ruby/Rails"
    else
      params[:genre]
    end
  end
end
