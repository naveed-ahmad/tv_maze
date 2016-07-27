module TvMaze::SeasonRepresenter
  include Representable::JSON

  property :number
  property :name
  property :episode_order, as: :episodeOrder
  property :premiere_date, as: :premiereDate
  property :end_date, as: :endDate
  property :web_channel, as: :webChannel
  property :summary
  property :network, extend: TvMaze::NetworkRepresenter, class: TvMaze::Network
  property :image, extend: TvMaze::ImageRepresenter, class: TvMaze::Image
end