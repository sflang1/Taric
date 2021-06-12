module Leaguev4
  def challenger_league_by_queue(queue, region)
    validate_region(region)
    validate_queue(queue)
  end

  def grandmasters_league_by_queue(queue, region)
    validate_region(region)
    validate_queue(queue)
    url = "https://#{region}.api.riotgames.com/lol/league/v4/challengerleagues/by-queue/#{queue}"
    perform(url)
  end

  def masters_league_by_queue(queue, region)
    validate_region(region)
    validate_queue(queue)

    url = "https://#{region}.api.riotgames.com/lol/league/v4/masterleagues/by-queue/#{queue}"
    perform(url)
  end

  def leagues_by_summoner_id(region, encrypted_summoner_id)
    validate_region(region)
    validate_queue(queue)

    url = "https://#{region}.api.riotgames.com/lol/league/v4/grandmasterleagues/by-queue/#{queue}"
    perform(url)
  end

  def league_entries_by_tier_and_division(region, queue, tier, division, page)
    validate_region(region)
    validate_queue(queue)
    validate_tier(tier)
    validate_division(division)

    url = "https://#{region}.api.riotgames.com/lol/league/v4/entries/#{queue}/#{tier}/#{division}?page=#{page}"
    perform(url)
  end

  def league_by_uuid(region, uuid)
    validate_region(region)

    url = "https://#{region}.api.riotgames.com/lol/league/v4/leagues/#{uuid}"
    perform(url)
  end
end