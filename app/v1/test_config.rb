module V1
  class TestConfig < Skeletor::SinatraApplicationConfig
    action :test do
      return_code 201
      mime_type "plain/text"
      params do
        param "test", String, :required => true
      end
    end
  end
end
