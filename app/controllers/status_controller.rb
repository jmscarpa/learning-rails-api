class StatusController < ApplicationController

  def index
    render json: {
      app: "Treinamento do Gustavinho",
      env: ENV.fetch('ENVIRONMENT') { nil },
      message: I18n.t('hello', name: "Gustavo")
    }
  end

end