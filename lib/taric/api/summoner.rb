require 'pry'

module Summoner
  def summoner_by_encrypted_account_id(region, encrypted_account_id)
    validate_region(region)
    url = "https://#{region.downcase}.api.riotgames.com/lol/summoner/v4/summoners/by-account/#{encrypted_account_id}"
    perform(url)
  end

  def summoner_by_encrypted_summoner_id(region, encrypted_summoner_id)
    validate_region(region)
    url = "https://#{region.downcase}.api.riotgames.com/lol/summoner/v4/summoners/#{encrypted_summoner_id}"
    perform(url)
  end

  def summoner_by_puuid(region, puuid)
    validate_region(region)
    url = "https://#{region.downcase}.api.riotgames.com/lol/summoner/v4/summoners/by-puuid/#{puuid}"
    perform(url)
  end

  def summoner_by_name(region, summoner_name)
    validate_region(region)
    url = "https://#{region.downcase}.api.riotgames.com/lol/summoner/v4/summoners/by-name/#{summoner_name}"
    perform(url)
  end

  def validate_region(region)
    raise Taric::InvalidInput.new("The region must be one of #{Taric.region_list.join(', ')}") unless Taric.region_list.include? region
  end
end