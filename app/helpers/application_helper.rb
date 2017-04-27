module ApplicationHelper
  def javascript_exists_base_controller?(script)
    script = "#{Rails.root}/app/assets/javascripts/#{params[:controller]}.js"
    File.exists?(script) || File.exists?("#{script}.coffee")
  end

  def stylesheet_exists_base_controller?(sheet)
    sheet = "#{Rails.root}/app/assets/stylesheets/#{params[:controller]}.css"
    if File.exists?(sheet)
      sheet
    elsif File.exists?("#{sheet}.scss")
      "#{sheet}.scss"
    else
      "#{sheet}.sass"
    end
  end

  def javascript_exists_base_slug?(script)
    script = "#{Rails.root}/app/assets/javascripts/#{@site.slug}.js"
    File.exists?(script) || File.exists?("#{script}.coffee")
  end

  def stylesheet_exists_base_slug?(sheet)
    sheet = "#{Rails.root}/app/assets/stylesheets/#{@site.slug}.css"
    if File.exists?(sheet)
      sheet
    elsif File.exists?("#{sheet}.scss")
      "#{sheet}.scss"
    elsif File.exists?("#{sheet}.sass")
      "#{sheet}.sass"
    else
      "#{sheet}.sass"
    end
  end
end
