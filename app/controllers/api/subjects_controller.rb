class Api::SubjectsController < ApplicationController

  def index
    @subjects = Subject.all
    @subjects = @subjects.order("name ASC")
    render "index.json.jbuilder"

  end

end
