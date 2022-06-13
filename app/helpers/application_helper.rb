module ApplicationHelper

  def javascript_include_tag_if_exists(controller_name)
    js_path = Rails.root.join('app', 'assets', 'javascripts', "#{controller_name}.js").to_s
    if File.exists?(js_path)
      javascript_include_tag(controller_name)
    end
  end

  def stylesheet_include_tag_if_exists(controller_name)
    scss_path = Rails.root.join('app', 'assets', 'stylesheets', "#{controller_name}.css").to_s
    if File.exists?(scss_path)
      stylesheet_link_tag(controller_name)
    end
  end

end
