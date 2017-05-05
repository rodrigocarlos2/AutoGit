Rails.application.config.middleware.use OmniAuth::Builder do

  GITHUB = YAML.load_file(Rails.root.join("config","github.yml"))

  provider :github, GITHUB['6ffde5aae55a3eb0ca4b'], GITHUB['db001b0445186e6a1d8ddb6e283848f44850da18']

end