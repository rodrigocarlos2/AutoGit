Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter => Rails.root.join("config/twitter")
  provider :facebook => Rails.root.join("config/facebook.yml")
  provider :github  => Rails.root.join("config/github.yml")
end