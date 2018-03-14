module ApplicationHelper

  #conditional that evaluates if there is a user logged in or not
  #in rails arguments can be passed without paranteses () ex: def login_helper or with ex: def source_helper(layout_name)
  #def login_helper style = '' this will set the default argument of the method to an empty string
  def login_helper style = ''
    if current_user.is_a?(GuestUser)      
      (link_to "Login", new_user_session_path, class: style) +
      " ".html_safe +
      (link_to "Register", new_user_registration_path, class: style)
    else
      link_to "Logout", destroy_user_session_path, method: :delete, class: style
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

  #create an array of key values of rake routes from nav and the title - link name shown in browser
  def nav_items
    [
      {
        url: root_path,
        title: "Home"
      },
      {
        url: about_me_path,
        title: "About Me"
      },
      {
        url: contact_path,
        title: "Contact"
      },
      {
        url: blogs_path,
        title: "Blog"
      },
      {
        url: portfolios_path,
        title: "Portfolio"
      }
    ]
  end

  #get nav_items, create a nav_links string and append << all the items
  def new_nav_helper style, tag_type
    nav_links = ''

    nav_items.each do |item|
      nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
    end

    nav_links.html_safe    
  end

  #defines the current page the user is on and sets "active" attribute to the nav link
  #boolean method -> def active?
  def active? path
    "active" if current_page? path
  end

  #NAV will generate a string that will have all the lines as written inside addin \n after each one
  #it has to start from the start of editor line (no white space) indentation as shown in this method
  #nav_links.html_safe returns the whole string as a sanitized string
  #this method is never used, is just for demo purpose
  def nav_helper style, tag_type
nav_links = <<NAV
<#{tag_type}><a href="#{root_path}" class="#{style} #{active? root_path}">Home</a></#{tag_type}>
<#{tag_type}><a href="#{about_me_path}" class="#{style} #{active? about_me_path}">About Me</a></#{tag_type}>
<#{tag_type}><a href="#{contact_path}" class="#{style} #{active? contact_path}">Contact</a></#{tag_type}>
<#{tag_type}><a href="#{blogs_path}" class="#{style} #{active? blogs_path}">Blog</a></#{tag_type}>
<#{tag_type}><a href="#{portfolios_path}" class="#{style} #{active? portfolios_path}">Portfolio</a></#{tag_type}>
NAV
    nav_links.html_safe
  end  

end
