class LocationsController < ApplicationController
  def find_locations
    # Simulated practitioner list
    @practitioners = [
      { name: "Jane Doe", city: "Louisville", phone: "555-123-4567" },
      { name: "John Smith", city: "Denver", phone: "555-987-6543" }
    ]

    LocationMailer.lead_email("test@example.com", @practitioners).deliver_now
    render json: { status: "email_sent", practitioners: @practitioners }
  end
end
