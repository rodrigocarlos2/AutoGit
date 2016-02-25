Rails.application.config.middleware.use OmniAuth::Builder do

  FACEBOOK = YAML.load_file(Rails.root.join("config","facebook.yml"))
  GITHUB = YAML.load_file(Rails.root.join("config","github.yml"))
  TWITTER = YAML.load_file(Rails.root.join("config","twitter.yml"))

  provider :facebook, FACEBOOK['app_id'], FACEBOOK['app_secret']
  provider :github, GITHUB['app_id'], GITHUB['app_secret']
  provider :twitter, "A9gGvEzdvHaE0PcZtYNNXavd8", "RmGpdCKOmMUuaGLcUoL6NuzpYNrSCKRZ2n21U9dOipIuYo2tey"

end