module TvMaze::AlternativeNameRepresenter
  include Representable::JSON

  property :name
  property :country, extend: TvMaze::CountryRepresenter, class: TvMaze::Country
end
