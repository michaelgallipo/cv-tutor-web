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
      password: params[:password],
      password_confirmation: params[:password_confirmation],
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

  def update
    @tutor = Tutor.find(params[:id])
      @tutor.name = params[:name] || @tutor.name
      @tutor.street = params[:street] || @tutor.street
      @tutor.city = params[:city] || @tutor.city
      @tutor.state = params[:state] || @tutor.state
      @tutor.zip = params[:zip] || @tutor.zip
      @tutor.school = params[:school] || @tutor.school
      @tutor.email = params[:email] || @tutor.email
      @tutor.phone = params[:phone] || @tutor.phone
      @tutor.phone_visible = params[:phone_visible] || @tutor.phone_visible
      @tutor.about = params[:about] || @tutor.about
      @tutor.grade_min = params[:grade_min] || @tutor.grade_min
      @tutor.grade_max = params[:grade_max] || @tutor.grade_max
      @tutor.rate = params[:rate] || @tutor.rate
      @tutor.accept_new = params[:accept_new] || @tutor.accept_new

      if @tutor.save
        render "show.json.jbuilder"
      else
        render json: {errors: @tutor.errors.full_message}, status: :unprocessable_entity
      end

  end

  def destroy
    @tutor = Tutor.find(params[:id])
    if @tutor.delete
      render json: {message: "Account deleted"}
    else
      render json: {errors: @tutor.errors.full_message}, status: :unprocessable_entity
    end
  end

end
