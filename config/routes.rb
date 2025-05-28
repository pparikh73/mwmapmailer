Rails.application.routes.draw do
  post "/find_locations", to: "locations#find_locations"
end
