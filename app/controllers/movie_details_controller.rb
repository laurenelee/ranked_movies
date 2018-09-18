class MovieDetailsController < ApplicationController
before_action :set_movie_detail, only: [:show]
# GET /movies
  def index
    @movie_details = MovieDetail.all

      render json: @movie_details.as_json(only:[:title, :url, :picture, :stars, :synopsis, :rank])
  end

    # GET /movie_details/1
  def show
    render json: @movie_detail.as_json(only:[:title, :url, :picture, :stars, :synopsis, :rank])
  end

  # POST /agency_details
  def create
    @movie_detail = MovieDetail.new(movie_detail_params)

    if @movie_detail.save
      render json: @movie_detail, status: :created, location: @movie_detail
    else
      render json: @movie_detail.errors, status: :unprocessable_entity
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_movie_detail
    @movie_detail = MovieDetail.find(params[:id])
  end
  # Only allow a trusted parameter "white list" through.
  def movie_detail_params
    params.require(:movie_detail).permit(:title, :url, :picture, :stars, :synopsis, :rank)
  end
end



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


  #
  #
  # def user_age_range
  #   1..(params[:age_minimum].to_i)
  # end
