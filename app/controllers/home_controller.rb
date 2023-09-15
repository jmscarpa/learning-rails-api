class HomeController < ApplicationController

  def index
    @application_name = "Rocket Chat Middleware"
  end

  # Index => List all record of a resource
  # Show => Detail of a single record
  # New => Show Form for new record
  # Create => Save the record
  # Edit => Show form to edit a record
  # Update => Update record
  # Destroy => Delete the record
end