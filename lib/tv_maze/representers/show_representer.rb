module TvMaze::ShowRepresenter
  include Representable::JSON

  property :id
  property :name
  property :type
  property :language
  property :status
  property :runtime
  property :premiered
  property :rating
  property :web_channel, as: :webChannel, extend: TvMaze::NetworkRepresenter, class: TvMaze::Network
  property :summary
  property :genres
  property :updated
  property :airing_schedule, as: :schedule, extend: TvMaze::AiringScheduleRepresenter, class: TvMaze::AiringSchedule
  property :previous_episode, as: :previousepisode
  property :network, extend: TvMaze::NetworkRepresenter, class: TvMaze::Network
  property :image, extend: TvMaze::ImageRepresenter, class: TvMaze::Image
  property :external_ids, as: :externals, extend: TvMaze::ExternalIdsRepresenter, class: TvMaze::ExternalIds

  nested :_embedded do
   collection :cast, class: TvMaze::Cast, extend: TvMaze::CastRepresenter
   collection :episodes, class: TvMaze::Episode, extend: TvMaze::EpisodeRepresenter
   property :next_episode, as: :nextepisode, extend: TvMaze::EpisodeRepresenter, class: TvMaze::Episode
  end

  #end
  #collection :schedule, extend: Igdb::GameThemeRepresenter, class: Igdb::GameTheme # Not documented in v1 API
end
