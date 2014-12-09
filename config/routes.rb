Rails.application.routes.draw do
  scope "/:locale", locale: /en|es|kr/ do
    get "/:id" => "high_voltage/pages#show", :as => :page, :format => false
  end

  get '/about' => 'high_voltage/pages#show', id: 'about'
end
