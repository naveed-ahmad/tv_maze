module TvMaze::EpisodeRepresenter
  include Representable::JSON

  property :id
  property :name
  property :summary
  property :season_number, as: :season
  property :episode_number, as: :number
  property :air_date, as: :airdate
  property :air_time, as: :airtime
  property :air_stamp, as: :airstamp
  property :run_time, as: :runtime
  property :image, extend: TvMaze::ImageRepresenter, class: TvMaze::Image
end


