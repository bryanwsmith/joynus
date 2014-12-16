Rails.application.routes.draw do
  get "/:id" => "high_voltage/pages#show", as: :page, format: false
end
