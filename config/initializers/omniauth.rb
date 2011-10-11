Rails.application.config.middleware.use OmniAuth::Builder do
  provider :identity, :fields => [:email], 
           :on_failed_registration => SessionsController.action(:authentication_failure)
end

