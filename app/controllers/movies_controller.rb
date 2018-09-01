class MoviesController < ApplicationController
before_action :set_movie_detail, only: [:show]
# GET /movies
  def index
    @movies = Movie.all
      render json: @movies.as_json(only:[:title, :year, :director, :rank])
  end

  def show

  end
    # GET /movies/1
  def show
    render json: @movie.as_json(only:[:title, :year, :director, :rank])
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_movie_detail
    @movie_detail = Movie.find(params[:id])

  end
end

  # # GET /search_agency_details
  # def search
  #   @query = {}
  #   @query[:volunteer_type] = params[:volunteer_type] if params[:volunteer_type]
  #   @query[:zip] = params[:zip] if params[:zip]
  #   @query[:age_minimum] = user_age_range
  #
  #   render json: AgencyDetail.where(@query).as_json(only:[:id, :name, :age_minimum, :volunteer_type, :zip, :description, :photo_url, :url])
  # end
  #
  # # POST /agency_details
  # def create
  #   @agency_detail = AgencyDetail.new(agency_detail_params)
  #
  #   if @agency_detail.save
  #     render json: @agency_detail, status: :created, location: @agency_detail
  #   else
  #     render json: @agency_detail.errors, status: :unprocessable_entity
  #   end
  # end
  #
  # # PATCH/PUT /agency_details/1
  # def update
  #   if @agency_detail.update(agency_detail_params)
  #     render json: @agency_detail
  #   else
  #     render json: @agency_detail.errors, status: :unprocessable_entity
  #   end
  # end
  #
  # # DELETE /agency_details/1
  # def destroy
  #   @agency_detail.destroy
  # end



  # # Only allow a trusted parameter "white list" through.
  # def agency_detail_params
  #   params.require(:agency_detail).permit(:name, :age_minimum, :volunteer_type, :zip, :description, :photo_url, :url
  #   )
  # end
  #
  #
  # def user_age_range
  #   1..(params[:age_minimum].to_i)
  # end
