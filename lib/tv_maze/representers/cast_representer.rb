module TvMaze::CastRepresenter
  include Representable::JSON

  property :person,extend: TvMaze::PersonRepresenter, class: TvMaze::Person
  property :character, extend: TvMaze::PersonRepresenter, class: TvMaze::Person
end
