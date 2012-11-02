module V1
  class Test < Skeletor::SinatraApplication
    set :api_version, "1.0"
    set :resource_prefix, /^\//

    action :test
    post "/test" do
      begin
        status 201
        body params["test"]
      rescue Exception => e
        puts e.message
        halt 500, "Internal Server Error"
      end
    end
  end
end
