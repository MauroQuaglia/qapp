module ApplicationHelper

  def javascript_include_tag_if_exists(path)
    js_path = Rails.root.join('app', 'assets', 'javascripts', "#{path}.js").to_s
    if File.exists?(js_path)
      javascript_include_tag(path)
    end
  end

  def stylesheet_include_tag_if_exists(path)
    scss_path = Rails.root.join('app', 'assets', 'stylesheets', "#{path}.css").to_s
    if File.exists?(scss_path)
      stylesheet_link_tag(path)
    end
  end

end
