class TvMaze::Schedule < TvMaze::ApiResource
  #The schedule is a complete list of episodes that air in a given country on a given date. Episodes are returned in the order in which they are aired, and full information about the episode and the corresponding show is included.
  def self.fetch(date: Date.today, country: 'US')
    params = {country: country, date: date.to_date.strftime}

    build_collection(TvMaze::Requester.get("schedule", params), TvMaze::ScheduleRepresenter)
  end

  #The full schedule is a list of all future episodes known to TVmaze
  def self.full
    build_collection(TvMaze::Requester.get("schedule/full"), TvMaze::ScheduleRepresenter)
  end
end
