module Leaguev4
  def challenger_league_by_queue(queue, region)
    perform(**{ region: region, queue: queue }) do
      "https://#{region}.api.riotgames.com/lol/league/v4/challengerleagues/by-queue/#{queue}"
    end
  end

  def leagues_by_summoner_id(region:, encrypted_summoner_id:)
    perform(**{ region: region, encrypted_summoner_id: encrypted_summoner_id }) do
      "https://#{region}.api.riotgames.com/lol/league/v4/entries/by-summoner/#{encrypted_summoner_id}"
    end
  end

  def league_entries_by_tier_and_division(region:, queue:, tier:, division:, page: 1)
    perform(**{ region: region, queue: queue, tier: tier, division: division, page: page }) do
      "https://#{region}.api.riotgames.com/lol/league/v4/entries/#{queue}/#{tier}/#{division}?page=#{page}"
    end
  end

  def grandmasters_league_by_queue(queue:, region:)
    perform(**{ region: region, queue: queue }) do
      "https://#{region}.api.riotgames.com/lol/league/v4/grandmasterleagues/by-queue/#{queue}"
    end
  end

  def league_by_uuid(region:, league_id:)
    perform(**{ region: region, league_id: league_id }) do
      "https://#{region}.api.riotgames.com/lol/league/v4/leagues/#{league_id}"
    end
  end

  def masters_league_by_queue(queue, region)
    perform(**{ region: region, league_id: league_id }) do
      "https://#{region}.api.riotgames.com/lol/league/v4/masterleagues/by-queue/#{queue}"
    end
  end
end
