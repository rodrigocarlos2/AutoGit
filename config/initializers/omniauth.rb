Rails.application.config.middleware.use OmniAuth::Builder do

  FACEBOOK = YAML.load_file(Rails.root.join("config","facebook.yml"))
  GITHUB = YAML.load_file(Rails.root.join("config","github.yml"))
  TWITTER = YAML.load_file(Rails.root.join("config","twitter.yml"))

  provider :facebook, FACEBOOK['app_id'], FACEBOOK['app_secret']
  provider :github, FACEBOOK['app_id'], FACEBOOK['app_secret']
  provider :twitter, FACEBOOK['app_key'], FACEBOOK['app_secret']

end