task "manifest:update" do
  abort "Manifest should never contain betas." if beta?

  tempdir do |dir|
    File.open("VERSION", "w") do |file|
      file.puts version
    end
    puts "Current version: #{version}"
    store "#{dir}/VERSION", "heroku-client/VERSION"
  end
end
