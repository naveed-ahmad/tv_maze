module TvMaze::NetworkRepresenter
  include Representable::JSON

  property :id
  property :name
  property :country, extend: TvMaze::CountryRepresenter, class: TvMaze::Country
end
