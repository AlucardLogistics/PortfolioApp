module ApplicationHelper

  #conditional that evaluates if there is a user logged in or not
  def login_helper
    if !current_user.is_a?(GuestUser)
      link_to "Logout", destroy_user_session_path, method: :delete
    else
      (link_to "Login", new_user_session_path) +
      "<br />".html_safe +
      (link_to "Register", new_user_registration_path)
    end
  end

  #add a paragraph that shows the landing page from where the user came when visiting the app
  def source_helper(layout_name)
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source]}. Welcome to the #{layout_name} layout."
      content_tag(:p, greeting, class: "source-greeting")
    end
  end

  def copyright_generator
    AlucardLogisticsViewTool::Renderer.copyright 'Dragos Stoian', 'All rights reserved'
  end

end
