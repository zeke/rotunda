class RotundaGenerator < Rails::Generator::Base

  def manifest
    record do |m|
      images_dir = File.join("public", "images", "rotunda")
      stylesheets_dir = File.join("public", "stylesheets")

      # Create directory for images
      m.directory images_dir
    
      # Copy images
      images = %w(3x24_left 3x24_right)
      images.each { |f| m.file "#{f}.png", File.join(images_dir, "#{f}.png") }

      # Copy stylesheets      
      stylesheets = %w(rotunda rotunda_changes)
      stylesheets.each { |d| m.file "#{f}.css", File.join(stylesheets_dir, "#{f}.css") }
    end
  end
  
end
