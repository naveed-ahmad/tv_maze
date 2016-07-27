module TvMaze::PersonRepresenter
  include Representable::JSON

  property :id
  property :name
  property :image, extend: TvMaze::ImageRepresenter, class: TvMaze::Image
end
