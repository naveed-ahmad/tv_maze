class TvMaze::Show < TvMaze::ApiResource
  def self.find(id, embed: [])
    build_single_resource(TvMaze::Requester.get("shows/#{id}", {embed: embed}), TvMaze::ShowRepresenter)
  end

  #A list of main cast for a show. Each cast item is a combination of a person and a character. Items are ordered by importance, which is determined by the total number of appearances of the given character in this show.
  def self.cast(id)
   TvMaze::Cast.build_collection(TvMaze::Requester.get("shows/#{id}/cast"), TvMaze::CastRepresenter)
  end

  #A list of AKA's (aliases) for a show. An AKA with its country set to null indicates an AKA in the show's original country. Otherwise, it's the AKA for that show in the given foreign country.
  def self.alternative_names(id)
    TvMaze::AlternativeName.build_collection(TvMaze::Requester.get("shows/#{id}/akas"), TvMaze::AlternativeNameRepresenter)
  end

  #A complete list of seasons for the given show. Seasons are returned in ascending order and contain the full information that's known about them.
  def self.seasons(id)
    TvMaze::Season.build_collection(TvMaze::Requester.get("shows/#{id}/seasons"), TvMaze::SeasonRepresenter)
  end

  def self.episodes(id, special: false)
    params = {specials: special ? 1 : 0}
    TvMaze::Episode.build_collection(TvMaze::Requester.get("shows/#{id}/episodes", params), TvMaze::EpisodeRepresenter)
  end

  def self.find_by_imdb_id(imdb)
    build_single_resource(TvMaze::Requester.get("lookup/shows", {imdb: imdb}), TvMaze::ShowRepresenter)
  end

  def self.find_by_tvrage_id(tvrage)
    build_single_resource(TvMaze::Requester.get("lookup/shows", {tvrage: tvrage}), TvMaze::ShowRepresenter)
  end

  def self.find_by_tvdb_id(tvdb)
    build_single_resource(TvMaze::Requester.get("lookup/shows", {thetvdb: tvdb}), TvMaze::ShowRepresenter)
  end

  def self.all(page = 1)
    build_collection(TvMaze::Requester.get("/shows", {page: page}), TvMaze::ShowRepresenter)
  end

  def self.search(q)
    result = TvMaze::Requester.get("search/shows", {q: q})
    build_collection(result.map{|show| show['show'] }, TvMaze::ShowRepresenter)
  end
end
