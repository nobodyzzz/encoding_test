module V0
  
  class HealthCheck < Skeletor::SinatraApplication
    
    set :resource_prefix, "/health-check"
    
    get "/health-check" do
      Skeletor::DBHealthCheck.check(self.class.app_config)
    end

  end

end
