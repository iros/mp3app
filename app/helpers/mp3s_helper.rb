module Mp3sHelper
  
  def render_m3u(mp3s)
    template = File.read(File.join(Rails.root, '/app/views/shared/_m3u.haml'))
    haml_engine = Haml::Engine.new(template)
    output = haml_engine.render(Object.new, :mp3s => mp3s)
    return output
  end
  
end
