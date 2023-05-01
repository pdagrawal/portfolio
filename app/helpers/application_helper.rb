module ApplicationHelper
  def svg(name)
    file_path = "#{Rails.root}/app/assets/images/#{name}.svg"
    if File.exist?(file_path)
      Rails.cache.fetch("svg_logo_#{name}") { File.read(file_path).html_safe }
    else
      '(not found)'
    end
  end
end
