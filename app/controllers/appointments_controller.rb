class AppointmentsController < ApplicationController
  before_action :authenticate_user

  def index
    @appointments = current_user.appointments
    render 'index.json.jbuilder'
  end

  def create
    carted_listings = current_user.cart
    @appointment = Appointment.create(user_id: current_user.id)
    carted_listings.each { |carted_listing| carted_listing.update(status: "Scheduled", appointment_id: @appointment.id) }
    

    render 'show.json.jbuilder'
  end
end
end
