class Api::SessionsController < ApplicationController

  protect_from_forgery with: :null_session

  def create
    tutor = Tutor.find_by(email: params[:email])
    if tutor && tutor.authenticate(params[:password])
      jwt = JWT.encode(
        {
          tutor_id: tutor.id, # the data to encode
          exp: 24.hours.from_now.to_i # the expiration time
        },
        Rails.application.credentials.fetch(:secret_key_base), # the secret key
        "HS256" # the encryption algorithm
      )
      render json: { jwt: jwt, email: tutor.email, tutor_id: tutor.id }, status: :created
    else
      render json: {}, status: :unauthorized
    end
  end

end
