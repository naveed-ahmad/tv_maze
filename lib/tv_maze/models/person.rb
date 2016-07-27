class TvMaze::Person < TvMaze::ApiResource

  def self.find(id, embed: [])
    build_single_resource(TvMaze::Requester.get("people/#{id}", {embed: embed}), TvMaze::PersonRepresenter)
  end

  def cast_credits(id, embed: [])
    #"people/#{id}/castcredits"
  end

  def crew_credits(id)

  end

  def self.search(query)
    result = TvMaze::Requester.get("search/people", {q: query})
    build_collection(result.map{|show| show['person'] }, TvMaze::PersonRepresenter)
  end
end
