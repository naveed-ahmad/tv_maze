require "tv_maze/version"
require 'representable'
require 'representable/json'

module TvMaze
  #Utilities
  autoload :Requester, 'tv_maze/requester'
  autoload :Exception, 'tv_maze/exception'
  autoload :Api, 'tv_maze/api'

  #Models
  autoload :ApiResource, 'tv_maze/models/api_resource'
  autoload :Show, 'tv_maze/models/show'
  autoload :Network, 'tv_maze/models/network'
  autoload :Image, 'tv_maze/models/image'
  autoload :ExternalIds, 'tv_maze/models/external_ids'
  autoload :Cast, 'tv_maze/models/cast'
  autoload :Episode, 'tv_maze/models/episode'
  autoload :Person, 'tv_maze/models/person'
  autoload :Country, 'tv_maze/models/country'
  autoload :Schedule, 'tv_maze/models/schedule'
  autoload :Season, 'tv_maze/models/season'
  autoload :AiringSchedule, 'tv_maze/models/airing_schedule'
  autoload :AlternativeName, 'tv_maze/models/alternative_name'


  #Presenters
  autoload :ShowRepresenter, 'tv_maze/representers/show_representer'
  autoload :NetworkRepresenter, 'tv_maze/representers/network_representer'
  autoload :ImageRepresenter, 'tv_maze/representers/image_representer'
  autoload :ExternalIdsRepresenter, 'tv_maze/representers/external_ids_representer'
  autoload :CastRepresenter, 'tv_maze/representers/cast_representer'
  autoload :EpisodeRepresenter, 'tv_maze/representers/episode_representer'
  autoload :PersonRepresenter, 'tv_maze/representers/person_representer'
  autoload :CountryRepresenter, 'tv_maze/representers/country_representer'
  autoload :SeasonRepresenter, 'tv_maze/representers/season_representer'
  autoload :ScheduleRepresenter, 'tv_maze/representers/schedule_representer'
  autoload :AiringScheduleRepresenter, 'tv_maze/representers/airing_schedule_representer'
  autoload :AlternativeNameRepresenter, 'tv_maze/representers/alternative_name_representer'
end
