module TvMaze::ScheduleRepresenter
  include Representable::JSON

  property :id
  property :episode_name, as: :name
  property :summary
  property :url
  property :season_number, as: :season
  property :episode_number, as: :number
  property :air_date, as: :airdate
  property :air_time, as: :airtime
  property :air_stamp, as: :airstamp
  property :run_time, as: :runtime
  property :image, extend: TvMaze::ImageRepresenter, class: TvMaze::Image
  property :related_show, as: :show, class: TvMaze::Show, extend: TvMaze::ShowRepresenter

  nested :_embedded do
    property :embeded_show, as: :show, class: TvMaze::Show, extend: TvMaze::ShowRepresenter
  end

  def show
    related_show || embeded_show
  end
end
