class Api::TutorsController < ApplicationController

skip_before_action :verify_authenticity_token

  def index
    @tutors = Tutor.all
    render "index.json.jbuilder"
  end

  def show
    @tutor = Tutor.find(params[:id])
    render "show.json.jbuilder"
  end

  def create
    @tutor = Tutor.create(
      name: params[:name],
      street: params[:street],
      city: params[:city],
      state: params[:state],
      zip: params[:zip],
      school: params[:school],
      email: params[:email],
      phone: params[:phone],
      phone_visible: params[:phone_visible],
      about: params[:about],
      grade_min: params[:grade_min],
      grade_max: params[:grade_max],
      rate: params[:rate],
      accept_new: params[:accept_new]
      )

      if @tutor.save
        render "show.json.jbuilder"
      else
        render json: {errors: @tutor.errors.full_message}, status: :unprocessable_entity
      end
  end

end
